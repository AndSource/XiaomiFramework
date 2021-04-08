package android.media.tv;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.android.internal.util.Preconditions;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Objects;

public final class TvTrackInfo implements Parcelable {
    public static final Creator<TvTrackInfo> CREATOR = new Creator<TvTrackInfo>() {
        public TvTrackInfo createFromParcel(Parcel in) {
            return new TvTrackInfo(in, null);
        }

        public TvTrackInfo[] newArray(int size) {
            return new TvTrackInfo[size];
        }
    };
    public static final int TYPE_AUDIO = 0;
    public static final int TYPE_SUBTITLE = 2;
    public static final int TYPE_VIDEO = 1;
    private final int mAudioChannelCount;
    private final int mAudioSampleRate;
    private final CharSequence mDescription;
    private final Bundle mExtra;
    private final String mId;
    private final String mLanguage;
    private final int mType;
    private final byte mVideoActiveFormatDescription;
    private final float mVideoFrameRate;
    private final int mVideoHeight;
    private final float mVideoPixelAspectRatio;
    private final int mVideoWidth;

    public static final class Builder {
        private int mAudioChannelCount;
        private int mAudioSampleRate;
        private CharSequence mDescription;
        private Bundle mExtra;
        private final String mId;
        private String mLanguage;
        private final int mType;
        private byte mVideoActiveFormatDescription;
        private float mVideoFrameRate;
        private int mVideoHeight;
        private float mVideoPixelAspectRatio = 1.0f;
        private int mVideoWidth;

        public Builder(int type, String id) {
            if (type == 0 || type == 1 || type == 2) {
                Preconditions.checkNotNull(id);
                this.mType = type;
                this.mId = id;
                return;
            }
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Unknown type: ");
            stringBuilder.append(type);
            throw new IllegalArgumentException(stringBuilder.toString());
        }

        public final Builder setLanguage(String language) {
            this.mLanguage = language;
            return this;
        }

        public final Builder setDescription(CharSequence description) {
            this.mDescription = description;
            return this;
        }

        public final Builder setAudioChannelCount(int audioChannelCount) {
            if (this.mType == 0) {
                this.mAudioChannelCount = audioChannelCount;
                return this;
            }
            throw new IllegalStateException("Not an audio track");
        }

        public final Builder setAudioSampleRate(int audioSampleRate) {
            if (this.mType == 0) {
                this.mAudioSampleRate = audioSampleRate;
                return this;
            }
            throw new IllegalStateException("Not an audio track");
        }

        public final Builder setVideoWidth(int videoWidth) {
            if (this.mType == 1) {
                this.mVideoWidth = videoWidth;
                return this;
            }
            throw new IllegalStateException("Not a video track");
        }

        public final Builder setVideoHeight(int videoHeight) {
            if (this.mType == 1) {
                this.mVideoHeight = videoHeight;
                return this;
            }
            throw new IllegalStateException("Not a video track");
        }

        public final Builder setVideoFrameRate(float videoFrameRate) {
            if (this.mType == 1) {
                this.mVideoFrameRate = videoFrameRate;
                return this;
            }
            throw new IllegalStateException("Not a video track");
        }

        public final Builder setVideoPixelAspectRatio(float videoPixelAspectRatio) {
            if (this.mType == 1) {
                this.mVideoPixelAspectRatio = videoPixelAspectRatio;
                return this;
            }
            throw new IllegalStateException("Not a video track");
        }

        public final Builder setVideoActiveFormatDescription(byte videoActiveFormatDescription) {
            if (this.mType == 1) {
                this.mVideoActiveFormatDescription = videoActiveFormatDescription;
                return this;
            }
            throw new IllegalStateException("Not a video track");
        }

        public final Builder setExtra(Bundle extra) {
            this.mExtra = new Bundle(extra);
            return this;
        }

        public TvTrackInfo build() {
            return new TvTrackInfo(this.mType, this.mId, this.mLanguage, this.mDescription, this.mAudioChannelCount, this.mAudioSampleRate, this.mVideoWidth, this.mVideoHeight, this.mVideoFrameRate, this.mVideoPixelAspectRatio, this.mVideoActiveFormatDescription, this.mExtra, null);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Type {
    }

    /* synthetic */ TvTrackInfo(int x0, String x1, String x2, CharSequence x3, int x4, int x5, int x6, int x7, float x8, float x9, byte x10, Bundle x11, AnonymousClass1 x12) {
        this(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11);
    }

    /* synthetic */ TvTrackInfo(Parcel x0, AnonymousClass1 x1) {
        this(x0);
    }

    private TvTrackInfo(int type, String id, String language, CharSequence description, int audioChannelCount, int audioSampleRate, int videoWidth, int videoHeight, float videoFrameRate, float videoPixelAspectRatio, byte videoActiveFormatDescription, Bundle extra) {
        this.mType = type;
        this.mId = id;
        this.mLanguage = language;
        this.mDescription = description;
        this.mAudioChannelCount = audioChannelCount;
        this.mAudioSampleRate = audioSampleRate;
        this.mVideoWidth = videoWidth;
        this.mVideoHeight = videoHeight;
        this.mVideoFrameRate = videoFrameRate;
        this.mVideoPixelAspectRatio = videoPixelAspectRatio;
        this.mVideoActiveFormatDescription = videoActiveFormatDescription;
        this.mExtra = extra;
    }

    private TvTrackInfo(Parcel in) {
        this.mType = in.readInt();
        this.mId = in.readString();
        this.mLanguage = in.readString();
        this.mDescription = in.readString();
        this.mAudioChannelCount = in.readInt();
        this.mAudioSampleRate = in.readInt();
        this.mVideoWidth = in.readInt();
        this.mVideoHeight = in.readInt();
        this.mVideoFrameRate = in.readFloat();
        this.mVideoPixelAspectRatio = in.readFloat();
        this.mVideoActiveFormatDescription = in.readByte();
        this.mExtra = in.readBundle();
    }

    public final int getType() {
        return this.mType;
    }

    public final String getId() {
        return this.mId;
    }

    public final String getLanguage() {
        return this.mLanguage;
    }

    public final CharSequence getDescription() {
        return this.mDescription;
    }

    public final int getAudioChannelCount() {
        if (this.mType == 0) {
            return this.mAudioChannelCount;
        }
        throw new IllegalStateException("Not an audio track");
    }

    public final int getAudioSampleRate() {
        if (this.mType == 0) {
            return this.mAudioSampleRate;
        }
        throw new IllegalStateException("Not an audio track");
    }

    public final int getVideoWidth() {
        if (this.mType == 1) {
            return this.mVideoWidth;
        }
        throw new IllegalStateException("Not a video track");
    }

    public final int getVideoHeight() {
        if (this.mType == 1) {
            return this.mVideoHeight;
        }
        throw new IllegalStateException("Not a video track");
    }

    public final float getVideoFrameRate() {
        if (this.mType == 1) {
            return this.mVideoFrameRate;
        }
        throw new IllegalStateException("Not a video track");
    }

    public final float getVideoPixelAspectRatio() {
        if (this.mType == 1) {
            return this.mVideoPixelAspectRatio;
        }
        throw new IllegalStateException("Not a video track");
    }

    public final byte getVideoActiveFormatDescription() {
        if (this.mType == 1) {
            return this.mVideoActiveFormatDescription;
        }
        throw new IllegalStateException("Not a video track");
    }

    public final Bundle getExtra() {
        return this.mExtra;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.mType);
        dest.writeString(this.mId);
        dest.writeString(this.mLanguage);
        CharSequence charSequence = this.mDescription;
        dest.writeString(charSequence != null ? charSequence.toString() : null);
        dest.writeInt(this.mAudioChannelCount);
        dest.writeInt(this.mAudioSampleRate);
        dest.writeInt(this.mVideoWidth);
        dest.writeInt(this.mVideoHeight);
        dest.writeFloat(this.mVideoFrameRate);
        dest.writeFloat(this.mVideoPixelAspectRatio);
        dest.writeByte(this.mVideoActiveFormatDescription);
        dest.writeBundle(this.mExtra);
    }

    public boolean equals(Object o) {
        boolean z = true;
        if (this == o) {
            return true;
        }
        if (!(o instanceof TvTrackInfo)) {
            return false;
        }
        TvTrackInfo obj = (TvTrackInfo) o;
        if (TextUtils.equals(this.mId, obj.mId) && this.mType == obj.mType && TextUtils.equals(this.mLanguage, obj.mLanguage) && TextUtils.equals(this.mDescription, obj.mDescription) && Objects.equals(this.mExtra, obj.mExtra)) {
            int i = this.mType;
            return i != 0 ? z : z;
        }
        z = false;
    }

    public int hashCode() {
        return Objects.hashCode(this.mId);
    }
}
