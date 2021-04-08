package android.media.tv;

import android.text.TextUtils;
import com.android.internal.util.Preconditions;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

public final class TvContentRating {
    private static final String DELIMITER = "/";
    public static final TvContentRating UNRATED;
    private final String mDomain;
    private final int mHashCode;
    private final String mRating;
    private final String mRatingSystem;
    private final String[] mSubRatings;

    static {
        String str = "null";
        UNRATED = new TvContentRating(str, str, str, null);
    }

    public static TvContentRating createRating(String domain, String ratingSystem, String rating, String... subRatings) {
        if (TextUtils.isEmpty(domain)) {
            throw new IllegalArgumentException("domain cannot be empty");
        } else if (TextUtils.isEmpty(ratingSystem)) {
            throw new IllegalArgumentException("ratingSystem cannot be empty");
        } else if (!TextUtils.isEmpty(rating)) {
            return new TvContentRating(domain, ratingSystem, rating, subRatings);
        } else {
            throw new IllegalArgumentException("rating cannot be empty");
        }
    }

    public static TvContentRating unflattenFromString(String ratingString) {
        if (TextUtils.isEmpty(ratingString)) {
            throw new IllegalArgumentException("ratingString cannot be empty");
        }
        String[] strs = ratingString.split(DELIMITER);
        if (strs.length < 3) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Invalid rating string: ");
            stringBuilder.append(ratingString);
            throw new IllegalArgumentException(stringBuilder.toString());
        } else if (strs.length <= 3) {
            return new TvContentRating(strs[0], strs[1], strs[2], null);
        } else {
            String[] subRatings = new String[(strs.length - 3)];
            System.arraycopy(strs, 3, subRatings, 0, subRatings.length);
            return new TvContentRating(strs[0], strs[1], strs[2], subRatings);
        }
    }

    private TvContentRating(String domain, String ratingSystem, String rating, String[] subRatings) {
        this.mDomain = domain;
        this.mRatingSystem = ratingSystem;
        this.mRating = rating;
        if (subRatings == null || subRatings.length == 0) {
            this.mSubRatings = null;
        } else {
            Arrays.sort(subRatings);
            this.mSubRatings = subRatings;
        }
        this.mHashCode = (Objects.hash(new Object[]{this.mDomain, this.mRating}) * 31) + Arrays.hashCode(this.mSubRatings);
    }

    public String getDomain() {
        return this.mDomain;
    }

    public String getRatingSystem() {
        return this.mRatingSystem;
    }

    public String getMainRating() {
        return this.mRating;
    }

    public List<String> getSubRatings() {
        String[] strArr = this.mSubRatings;
        if (strArr == null) {
            return null;
        }
        return Collections.unmodifiableList(Arrays.asList(strArr));
    }

    public String flattenToString() {
        StringBuilder builder = new StringBuilder();
        builder.append(this.mDomain);
        String str = DELIMITER;
        builder.append(str);
        builder.append(this.mRatingSystem);
        builder.append(str);
        builder.append(this.mRating);
        String[] strArr = this.mSubRatings;
        if (strArr != null) {
            for (String subRating : strArr) {
                builder.append(str);
                builder.append(subRating);
            }
        }
        return builder.toString();
    }

    public final boolean contains(TvContentRating rating) {
        Preconditions.checkNotNull(rating);
        if (!rating.getMainRating().equals(this.mRating) || !rating.getDomain().equals(this.mDomain) || !rating.getRatingSystem().equals(this.mRatingSystem) || !rating.getMainRating().equals(this.mRating)) {
            return false;
        }
        List<String> subRatings = getSubRatings();
        List<String> subRatingsOther = rating.getSubRatings();
        if (subRatings == null && subRatingsOther == null) {
            return true;
        }
        if (subRatings == null && subRatingsOther != null) {
            return false;
        }
        if (subRatings == null || subRatingsOther != null) {
            return subRatings.containsAll(subRatingsOther);
        }
        return true;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof TvContentRating)) {
            return false;
        }
        TvContentRating other = (TvContentRating) obj;
        if (this.mHashCode == other.mHashCode && TextUtils.equals(this.mDomain, other.mDomain) && TextUtils.equals(this.mRatingSystem, other.mRatingSystem) && TextUtils.equals(this.mRating, other.mRating)) {
            return Arrays.equals(this.mSubRatings, other.mSubRatings);
        }
        return false;
    }

    public int hashCode() {
        return this.mHashCode;
    }
}
