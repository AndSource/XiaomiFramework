package android.net.wifi.p2p.nsd;

import android.net.wifi.p2p.WifiP2pDevice;
import android.net.wifi.p2p.nsd.WifiP2pServiceResponse.Status;
import java.util.ArrayList;
import java.util.List;

public class WifiP2pUpnpServiceResponse extends WifiP2pServiceResponse {
    private List<String> mUniqueServiceNames;
    private int mVersion;

    public int getVersion() {
        return this.mVersion;
    }

    public List<String> getUniqueServiceNames() {
        return this.mUniqueServiceNames;
    }

    protected WifiP2pUpnpServiceResponse(int status, int transId, WifiP2pDevice dev, byte[] data) {
        super(2, status, transId, dev, data);
        if (!parse()) {
            throw new IllegalArgumentException("Malformed upnp service response");
        }
    }

    private boolean parse() {
        if (this.mData == null) {
            return true;
        }
        int i = 0;
        if (this.mData.length < 1) {
            return false;
        }
        this.mVersion = this.mData[0] & 255;
        String[] names = new String(this.mData, 1, this.mData.length - 1).split(",");
        this.mUniqueServiceNames = new ArrayList();
        int length = names.length;
        while (i < length) {
            this.mUniqueServiceNames.add(names[i]);
            i++;
        }
        return true;
    }

    public String toString() {
        StringBuffer sbuf = new StringBuffer();
        sbuf.append("serviceType:UPnP(");
        sbuf.append(this.mServiceType);
        sbuf.append(")");
        sbuf.append(" status:");
        sbuf.append(Status.toString(this.mStatus));
        sbuf.append(" srcAddr:");
        sbuf.append(this.mDevice.deviceAddress);
        sbuf.append(" version:");
        sbuf.append(String.format("%02x", new Object[]{Integer.valueOf(this.mVersion)}));
        List<String> list = this.mUniqueServiceNames;
        if (list != null) {
            for (String name : list) {
                sbuf.append(" usn:");
                sbuf.append(name);
            }
        }
        return sbuf.toString();
    }

    static WifiP2pUpnpServiceResponse newInstance(int status, int transId, WifiP2pDevice device, byte[] data) {
        if (status != 0) {
            return new WifiP2pUpnpServiceResponse(status, transId, device, null);
        }
        try {
            return new WifiP2pUpnpServiceResponse(status, transId, device, data);
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
            return null;
        }
    }
}
