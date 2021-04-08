package android.filterpacks.base;

import android.filterfw.core.Filter;
import android.filterfw.core.FilterContext;
import android.filterfw.core.Frame;
import android.filterfw.core.FrameFormat;
import android.filterfw.core.GenerateFinalPort;
import android.filterfw.core.MutableFrameFormat;

public class RetargetFilter extends Filter {
    private MutableFrameFormat mOutputFormat;
    private int mTarget = -1;
    @GenerateFinalPort(hasDefault = false, name = "target")
    private String mTargetString;

    public RetargetFilter(String name) {
        super(name);
    }

    public void setupPorts() {
        this.mTarget = FrameFormat.readTargetString(this.mTargetString);
        String str = "frame";
        addInputPort(str);
        addOutputBasedOnInput(str, str);
    }

    public FrameFormat getOutputFormat(String portName, FrameFormat inputFormat) {
        MutableFrameFormat retargeted = inputFormat.mutableCopy();
        retargeted.setTarget(this.mTarget);
        return retargeted;
    }

    public void process(FilterContext context) {
        String str = "frame";
        Frame output = context.getFrameManager().duplicateFrameToTarget(pullInput(str), this.mTarget);
        pushOutput(str, output);
        output.release();
    }
}