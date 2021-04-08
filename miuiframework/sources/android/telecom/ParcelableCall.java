package android.telecom;

import android.annotation.UnsupportedAppUsage;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.RemoteException;
import com.android.internal.telecom.IVideoProvider;
import com.android.internal.telecom.IVideoProvider.Stub;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class ParcelableCall implements Parcelable {
    @UnsupportedAppUsage(maxTargetSdk = 28, trackingBug = 115609023)
    public static final Creator<ParcelableCall> CREATOR = new Creator<ParcelableCall>() {
        public ParcelableCall createFromParcel(Parcel source) {
            Parcel parcel = source;
            ClassLoader classLoader = ParcelableCall.class.getClassLoader();
            String id = source.readString();
            int state = source.readInt();
            DisconnectCause disconnectCause = (DisconnectCause) parcel.readParcelable(classLoader);
            List<String> cannedSmsResponses = new ArrayList();
            parcel.readList(cannedSmsResponses, classLoader);
            int capabilities = source.readInt();
            int properties = source.readInt();
            long connectTimeMillis = source.readLong();
            Uri handle = (Uri) parcel.readParcelable(classLoader);
            int handlePresentation = source.readInt();
            String callerDisplayName = source.readString();
            int callerDisplayNamePresentation = source.readInt();
            GatewayInfo gatewayInfo = (GatewayInfo) parcel.readParcelable(classLoader);
            PhoneAccountHandle accountHandle = (PhoneAccountHandle) parcel.readParcelable(classLoader);
            boolean isVideoCallProviderChanged = source.readByte() == (byte) 1;
            IVideoProvider videoCallProvider = Stub.asInterface(source.readStrongBinder());
            String parentCallId = source.readString();
            List<String> childCallIds = new ArrayList();
            parcel.readList(childCallIds, classLoader);
            StatusHints statusHints = (StatusHints) parcel.readParcelable(classLoader);
            int videoState = source.readInt();
            List<String> conferenceableCallIds = new ArrayList();
            parcel.readList(conferenceableCallIds, classLoader);
            return new ParcelableCall(id, state, disconnectCause, cannedSmsResponses, capabilities, properties, source.readInt(), connectTimeMillis, handle, handlePresentation, callerDisplayName, callerDisplayNamePresentation, gatewayInfo, accountHandle, isVideoCallProviderChanged, videoCallProvider, source.readByte() == (byte) 1, (ParcelableRttCall) parcel.readParcelable(classLoader), parentCallId, childCallIds, statusHints, videoState, conferenceableCallIds, parcel.readBundle(classLoader), parcel.readBundle(classLoader), source.readLong(), source.readInt());
        }

        public ParcelableCall[] newArray(int size) {
            return new ParcelableCall[size];
        }
    };
    private final PhoneAccountHandle mAccountHandle;
    private final int mCallDirection;
    private final String mCallerDisplayName;
    private final int mCallerDisplayNamePresentation;
    private final List<String> mCannedSmsResponses;
    private final int mCapabilities;
    private final List<String> mChildCallIds;
    private final List<String> mConferenceableCallIds;
    private final long mConnectTimeMillis;
    private final long mCreationTimeMillis;
    private final DisconnectCause mDisconnectCause;
    private final Bundle mExtras;
    private final GatewayInfo mGatewayInfo;
    private final Uri mHandle;
    private final int mHandlePresentation;
    private final String mId;
    private final Bundle mIntentExtras;
    private final boolean mIsRttCallChanged;
    private final boolean mIsVideoCallProviderChanged;
    private final String mParentCallId;
    private final int mProperties;
    private final ParcelableRttCall mRttCall;
    private final int mState;
    private final StatusHints mStatusHints;
    private final int mSupportedAudioRoutes;
    private VideoCallImpl mVideoCall;
    private final IVideoProvider mVideoCallProvider;
    private final int mVideoState;

    public ParcelableCall(String id, int state, DisconnectCause disconnectCause, List<String> cannedSmsResponses, int capabilities, int properties, int supportedAudioRoutes, long connectTimeMillis, Uri handle, int handlePresentation, String callerDisplayName, int callerDisplayNamePresentation, GatewayInfo gatewayInfo, PhoneAccountHandle accountHandle, boolean isVideoCallProviderChanged, IVideoProvider videoCallProvider, boolean isRttCallChanged, ParcelableRttCall rttCall, String parentCallId, List<String> childCallIds, StatusHints statusHints, int videoState, List<String> conferenceableCallIds, Bundle intentExtras, Bundle extras, long creationTimeMillis, int callDirection) {
        this.mId = id;
        this.mState = state;
        this.mDisconnectCause = disconnectCause;
        this.mCannedSmsResponses = cannedSmsResponses;
        this.mCapabilities = capabilities;
        this.mProperties = properties;
        this.mSupportedAudioRoutes = supportedAudioRoutes;
        this.mConnectTimeMillis = connectTimeMillis;
        this.mHandle = handle;
        this.mHandlePresentation = handlePresentation;
        this.mCallerDisplayName = callerDisplayName;
        this.mCallerDisplayNamePresentation = callerDisplayNamePresentation;
        this.mGatewayInfo = gatewayInfo;
        this.mAccountHandle = accountHandle;
        this.mIsVideoCallProviderChanged = isVideoCallProviderChanged;
        this.mVideoCallProvider = videoCallProvider;
        this.mIsRttCallChanged = isRttCallChanged;
        this.mRttCall = rttCall;
        this.mParentCallId = parentCallId;
        this.mChildCallIds = childCallIds;
        this.mStatusHints = statusHints;
        this.mVideoState = videoState;
        this.mConferenceableCallIds = Collections.unmodifiableList(conferenceableCallIds);
        this.mIntentExtras = intentExtras;
        this.mExtras = extras;
        this.mCreationTimeMillis = creationTimeMillis;
        this.mCallDirection = callDirection;
    }

    @UnsupportedAppUsage(maxTargetSdk = 28, trackingBug = 115609023)
    public String getId() {
        return this.mId;
    }

    public int getState() {
        return this.mState;
    }

    @UnsupportedAppUsage(maxTargetSdk = 28, trackingBug = 115609023)
    public DisconnectCause getDisconnectCause() {
        return this.mDisconnectCause;
    }

    public List<String> getCannedSmsResponses() {
        return this.mCannedSmsResponses;
    }

    public int getCapabilities() {
        return this.mCapabilities;
    }

    public int getProperties() {
        return this.mProperties;
    }

    public int getSupportedAudioRoutes() {
        return this.mSupportedAudioRoutes;
    }

    @UnsupportedAppUsage(maxTargetSdk = 28, trackingBug = 115609023)
    public long getConnectTimeMillis() {
        return this.mConnectTimeMillis;
    }

    @UnsupportedAppUsage(maxTargetSdk = 28, trackingBug = 115609023)
    public Uri getHandle() {
        return this.mHandle;
    }

    public int getHandlePresentation() {
        return this.mHandlePresentation;
    }

    public String getCallerDisplayName() {
        return this.mCallerDisplayName;
    }

    public int getCallerDisplayNamePresentation() {
        return this.mCallerDisplayNamePresentation;
    }

    public GatewayInfo getGatewayInfo() {
        return this.mGatewayInfo;
    }

    public PhoneAccountHandle getAccountHandle() {
        return this.mAccountHandle;
    }

    public VideoCallImpl getVideoCallImpl(String callingPackageName, int targetSdkVersion) {
        if (this.mVideoCall == null) {
            IVideoProvider iVideoProvider = this.mVideoCallProvider;
            if (iVideoProvider != null) {
                try {
                    this.mVideoCall = new VideoCallImpl(iVideoProvider, callingPackageName, targetSdkVersion);
                } catch (RemoteException e) {
                }
            }
        }
        return this.mVideoCall;
    }

    public boolean getIsRttCallChanged() {
        return this.mIsRttCallChanged;
    }

    public ParcelableRttCall getParcelableRttCall() {
        return this.mRttCall;
    }

    public String getParentCallId() {
        return this.mParentCallId;
    }

    public List<String> getChildCallIds() {
        return this.mChildCallIds;
    }

    public List<String> getConferenceableCallIds() {
        return this.mConferenceableCallIds;
    }

    public StatusHints getStatusHints() {
        return this.mStatusHints;
    }

    public int getVideoState() {
        return this.mVideoState;
    }

    public Bundle getExtras() {
        return this.mExtras;
    }

    public Bundle getIntentExtras() {
        return this.mIntentExtras;
    }

    public boolean isVideoCallProviderChanged() {
        return this.mIsVideoCallProviderChanged;
    }

    public long getCreationTimeMillis() {
        return this.mCreationTimeMillis;
    }

    public int getCallDirection() {
        return this.mCallDirection;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel destination, int flags) {
        destination.writeString(this.mId);
        destination.writeInt(this.mState);
        destination.writeParcelable(this.mDisconnectCause, 0);
        destination.writeList(this.mCannedSmsResponses);
        destination.writeInt(this.mCapabilities);
        destination.writeInt(this.mProperties);
        destination.writeLong(this.mConnectTimeMillis);
        destination.writeParcelable(this.mHandle, 0);
        destination.writeInt(this.mHandlePresentation);
        destination.writeString(this.mCallerDisplayName);
        destination.writeInt(this.mCallerDisplayNamePresentation);
        destination.writeParcelable(this.mGatewayInfo, 0);
        destination.writeParcelable(this.mAccountHandle, 0);
        destination.writeByte((byte) this.mIsVideoCallProviderChanged);
        IVideoProvider iVideoProvider = this.mVideoCallProvider;
        destination.writeStrongBinder(iVideoProvider != null ? iVideoProvider.asBinder() : null);
        destination.writeString(this.mParentCallId);
        destination.writeList(this.mChildCallIds);
        destination.writeParcelable(this.mStatusHints, 0);
        destination.writeInt(this.mVideoState);
        destination.writeList(this.mConferenceableCallIds);
        destination.writeBundle(this.mIntentExtras);
        destination.writeBundle(this.mExtras);
        destination.writeInt(this.mSupportedAudioRoutes);
        destination.writeByte((byte) this.mIsRttCallChanged);
        destination.writeParcelable(this.mRttCall, 0);
        destination.writeLong(this.mCreationTimeMillis);
        destination.writeInt(this.mCallDirection);
    }

    public String toString() {
        return String.format("[%s, parent:%s, children:%s]", new Object[]{this.mId, this.mParentCallId, this.mChildCallIds});
    }
}
