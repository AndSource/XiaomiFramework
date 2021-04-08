package android.app;

import android.annotation.UnsupportedAppUsage;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.DatePicker.OnDateChangedListener;
import android.widget.DatePicker.ValidationCallback;
import com.android.internal.R;
import java.util.Calendar;

public class DatePickerDialog extends AlertDialog implements OnClickListener, OnDateChangedListener {
    private static final String DAY = "day";
    private static final String MONTH = "month";
    private static final String YEAR = "year";
    @UnsupportedAppUsage
    private final DatePicker mDatePicker;
    private OnDateSetListener mDateSetListener;
    private final ValidationCallback mValidationCallback;

    public interface OnDateSetListener {
        void onDateSet(DatePicker datePicker, int i, int i2, int i3);
    }

    public DatePickerDialog(Context context) {
        this(context, 0, null, Calendar.getInstance(), -1, -1, -1);
    }

    public DatePickerDialog(Context context, int themeResId) {
        this(context, themeResId, null, Calendar.getInstance(), -1, -1, -1);
    }

    public DatePickerDialog(Context context, OnDateSetListener listener, int year, int month, int dayOfMonth) {
        this(context, 0, listener, null, year, month, dayOfMonth);
    }

    public DatePickerDialog(Context context, int themeResId, OnDateSetListener listener, int year, int monthOfYear, int dayOfMonth) {
        this(context, themeResId, listener, null, year, monthOfYear, dayOfMonth);
    }

    private DatePickerDialog(Context context, int themeResId, OnDateSetListener listener, Calendar calendar, int year, int monthOfYear, int dayOfMonth) {
        super(context, resolveDialogTheme(context, themeResId));
        this.mValidationCallback = new ValidationCallback() {
            public void onValidationChanged(boolean valid) {
                Button positive = DatePickerDialog.this.getButton(-1);
                if (positive != null) {
                    positive.setEnabled(valid);
                }
            }
        };
        Context themeContext = getContext();
        View view = LayoutInflater.from(themeContext).inflate((int) R.layout.date_picker_dialog, null);
        setView(view);
        setButton(-1, (CharSequence) themeContext.getString(17039370), (OnClickListener) this);
        setButton(-2, (CharSequence) themeContext.getString(17039360), (OnClickListener) this);
        setButtonPanelLayoutHint(1);
        if (calendar != null) {
            year = calendar.get(1);
            monthOfYear = calendar.get(2);
            dayOfMonth = calendar.get(5);
        }
        this.mDatePicker = (DatePicker) view.findViewById(R.id.datePicker);
        this.mDatePicker.init(year, monthOfYear, dayOfMonth, this);
        this.mDatePicker.setValidationCallback(this.mValidationCallback);
        this.mDateSetListener = listener;
    }

    static int resolveDialogTheme(Context context, int themeResId) {
        if (themeResId != 0) {
            return themeResId;
        }
        TypedValue outValue = new TypedValue();
        context.getTheme().resolveAttribute(16843948, outValue, true);
        return outValue.resourceId;
    }

    public void onDateChanged(DatePicker view, int year, int month, int dayOfMonth) {
        this.mDatePicker.init(year, month, dayOfMonth, this);
    }

    public void setOnDateSetListener(OnDateSetListener listener) {
        this.mDateSetListener = listener;
    }

    public void onClick(DialogInterface dialog, int which) {
        if (which == -2) {
            cancel();
        } else if (which == -1 && this.mDateSetListener != null) {
            this.mDatePicker.clearFocus();
            OnDateSetListener onDateSetListener = this.mDateSetListener;
            DatePicker datePicker = this.mDatePicker;
            onDateSetListener.onDateSet(datePicker, datePicker.getYear(), this.mDatePicker.getMonth(), this.mDatePicker.getDayOfMonth());
        }
    }

    public DatePicker getDatePicker() {
        return this.mDatePicker;
    }

    public void updateDate(int year, int month, int dayOfMonth) {
        this.mDatePicker.updateDate(year, month, dayOfMonth);
    }

    public Bundle onSaveInstanceState() {
        Bundle state = super.onSaveInstanceState();
        state.putInt("year", this.mDatePicker.getYear());
        state.putInt("month", this.mDatePicker.getMonth());
        state.putInt(DAY, this.mDatePicker.getDayOfMonth());
        return state;
    }

    public void onRestoreInstanceState(Bundle savedInstanceState) {
        super.onRestoreInstanceState(savedInstanceState);
        this.mDatePicker.init(savedInstanceState.getInt("year"), savedInstanceState.getInt("month"), savedInstanceState.getInt(DAY), this);
    }
}
