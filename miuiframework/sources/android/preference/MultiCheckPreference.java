package android.preference;

import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnMultiChoiceClickListener;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.preference.Preference.BaseSavedState;
import android.util.AttributeSet;
import com.android.internal.R;
import java.util.Arrays;

@Deprecated
public class MultiCheckPreference extends DialogPreference {
    private CharSequence[] mEntries;
    private String[] mEntryValues;
    private boolean[] mOrigValues;
    private boolean[] mSetValues;
    private String mSummary;

    private static class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR = new Creator<SavedState>() {
            public SavedState createFromParcel(Parcel in) {
                return new SavedState(in);
            }

            public SavedState[] newArray(int size) {
                return new SavedState[size];
            }
        };
        boolean[] values;

        public SavedState(Parcel source) {
            super(source);
            this.values = source.createBooleanArray();
        }

        public void writeToParcel(Parcel dest, int flags) {
            super.writeToParcel(dest, flags);
            dest.writeBooleanArray(this.values);
        }

        public SavedState(Parcelable superState) {
            super(superState);
        }
    }

    public MultiCheckPreference(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        TypedArray a = context.obtainStyledAttributes(attrs, R.styleable.ListPreference, defStyleAttr, defStyleRes);
        this.mEntries = a.getTextArray(0);
        CharSequence[] charSequenceArr = this.mEntries;
        if (charSequenceArr != null) {
            setEntries(charSequenceArr);
        }
        setEntryValuesCS(a.getTextArray(1));
        a.recycle();
        a = context.obtainStyledAttributes(attrs, R.styleable.Preference, 0, 0);
        this.mSummary = a.getString(7);
        a.recycle();
    }

    public MultiCheckPreference(Context context, AttributeSet attrs, int defStyleAttr) {
        this(context, attrs, defStyleAttr, 0);
    }

    public MultiCheckPreference(Context context, AttributeSet attrs) {
        this(context, attrs, 16842897);
    }

    public MultiCheckPreference(Context context) {
        this(context, null);
    }

    public void setEntries(CharSequence[] entries) {
        this.mEntries = entries;
        this.mSetValues = new boolean[entries.length];
        this.mOrigValues = new boolean[entries.length];
    }

    public void setEntries(int entriesResId) {
        setEntries(getContext().getResources().getTextArray(entriesResId));
    }

    public CharSequence[] getEntries() {
        return this.mEntries;
    }

    public void setEntryValues(String[] entryValues) {
        this.mEntryValues = entryValues;
        Arrays.fill(this.mSetValues, false);
        Arrays.fill(this.mOrigValues, false);
    }

    public void setEntryValues(int entryValuesResId) {
        setEntryValuesCS(getContext().getResources().getTextArray(entryValuesResId));
    }

    private void setEntryValuesCS(CharSequence[] values) {
        setValues(null);
        if (values != null) {
            this.mEntryValues = new String[values.length];
            for (int i = 0; i < values.length; i++) {
                this.mEntryValues[i] = values[i].toString();
            }
        }
    }

    public String[] getEntryValues() {
        return this.mEntryValues;
    }

    public boolean getValue(int index) {
        return this.mSetValues[index];
    }

    public void setValue(int index, boolean state) {
        this.mSetValues[index] = state;
    }

    public void setValues(boolean[] values) {
        boolean[] zArr = this.mSetValues;
        if (zArr != null) {
            Arrays.fill(zArr, false);
            Arrays.fill(this.mOrigValues, false);
            if (values != null) {
                zArr = this.mSetValues;
                System.arraycopy(values, 0, zArr, 0, values.length < zArr.length ? values.length : zArr.length);
            }
        }
    }

    public CharSequence getSummary() {
        String str = this.mSummary;
        if (str == null) {
            return super.getSummary();
        }
        return str;
    }

    public void setSummary(CharSequence summary) {
        super.setSummary(summary);
        if (summary == null && this.mSummary != null) {
            this.mSummary = null;
        } else if (summary != null && !summary.equals(this.mSummary)) {
            this.mSummary = summary.toString();
        }
    }

    public boolean[] getValues() {
        return this.mSetValues;
    }

    public int findIndexOfValue(String value) {
        if (value != null) {
            String[] strArr = this.mEntryValues;
            if (strArr != null) {
                for (int i = strArr.length - 1; i >= 0; i--) {
                    if (this.mEntryValues[i].equals(value)) {
                        return i;
                    }
                }
            }
        }
        return -1;
    }

    /* Access modifiers changed, original: protected */
    public void onPrepareDialogBuilder(Builder builder) {
        super.onPrepareDialogBuilder(builder);
        if (this.mEntries == null || this.mEntryValues == null) {
            throw new IllegalStateException("ListPreference requires an entries array and an entryValues array.");
        }
        boolean[] zArr = this.mSetValues;
        this.mOrigValues = Arrays.copyOf(zArr, zArr.length);
        builder.setMultiChoiceItems(this.mEntries, this.mSetValues, new OnMultiChoiceClickListener() {
            public void onClick(DialogInterface dialog, int which, boolean isChecked) {
                MultiCheckPreference.this.mSetValues[which] = isChecked;
            }
        });
    }

    /* Access modifiers changed, original: protected */
    public void onDialogClosed(boolean positiveResult) {
        super.onDialogClosed(positiveResult);
        if (!positiveResult || !callChangeListener(getValues())) {
            boolean[] zArr = this.mOrigValues;
            boolean[] zArr2 = this.mSetValues;
            System.arraycopy(zArr, 0, zArr2, 0, zArr2.length);
        }
    }

    /* Access modifiers changed, original: protected */
    public Object onGetDefaultValue(TypedArray a, int index) {
        return a.getString(index);
    }

    /* Access modifiers changed, original: protected */
    public void onSetInitialValue(boolean restoreValue, Object defaultValue) {
    }

    /* Access modifiers changed, original: protected */
    public Parcelable onSaveInstanceState() {
        Parcelable superState = super.onSaveInstanceState();
        if (isPersistent()) {
            return superState;
        }
        SavedState myState = new SavedState(superState);
        myState.values = getValues();
        return myState;
    }

    /* Access modifiers changed, original: protected */
    public void onRestoreInstanceState(Parcelable state) {
        if (state == null || !state.getClass().equals(SavedState.class)) {
            super.onRestoreInstanceState(state);
            return;
        }
        SavedState myState = (SavedState) state;
        super.onRestoreInstanceState(myState.getSuperState());
        setValues(myState.values);
    }
}
