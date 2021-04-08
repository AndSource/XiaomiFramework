.class public final Landroid/stats/dnsresolver/DnsResolver;
.super Ljava/lang/Object;
.source "DnsResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/stats/dnsresolver/DnsResolver$DnsQueryEvents;,
        Landroid/stats/dnsresolver/DnsResolver$DnsQueryEvent;
    }
.end annotation


# static fields
.field public static final CS_FOUND:I = 0x2

.field public static final CS_NOTFOUND:I = 0x1

.field public static final CS_SKIP:I = 0x3

.field public static final CS_UNSUPPORTED:I = 0x0

.field public static final EVENT_GETADDRINFO:I = 0x1

.field public static final EVENT_GETHOSTBYADDR:I = 0x3

.field public static final EVENT_GETHOSTBYNAME:I = 0x2

.field public static final EVENT_RES_NSEND:I = 0x4

.field public static final EVENT_UNKNOWN:I = 0x0

.field public static final IV_IPV4:I = 0x1

.field public static final IV_IPV6:I = 0x2

.field public static final IV_UNKNOWN:I = 0x0

.field public static final NS_R_BADKEY:I = 0x11

.field public static final NS_R_BADTIME:I = 0x12

.field public static final NS_R_BADVERS:I = 0x10

.field public static final NS_R_FORMERR:I = 0x1

.field public static final NS_R_MAX:I = 0xb

.field public static final NS_R_NOTAUTH:I = 0x9

.field public static final NS_R_NOTIMPL:I = 0x4

.field public static final NS_R_NOTZONE:I = 0xa

.field public static final NS_R_NO_ERROR:I = 0x0

.field public static final NS_R_NXDOMAIN:I = 0x3

.field public static final NS_R_NXRRSET:I = 0x8

.field public static final NS_R_REFUSED:I = 0x5

.field public static final NS_R_SERVFAIL:I = 0x2

.field public static final NS_R_YXDOMAIN:I = 0x6

.field public static final NS_R_YXRRSET:I = 0x7

.field public static final NS_T_A:I = 0x1

.field public static final NS_T_A6:I = 0x26

.field public static final NS_T_AAAA:I = 0x1c

.field public static final NS_T_AFSDB:I = 0x12

.field public static final NS_T_ANY:I = 0xff

.field public static final NS_T_APL:I = 0x2a

.field public static final NS_T_ATMA:I = 0x22

.field public static final NS_T_AXFR:I = 0xfc

.field public static final NS_T_CERT:I = 0x25

.field public static final NS_T_CNAME:I = 0x5

.field public static final NS_T_DHCID:I = 0x31

.field public static final NS_T_DLV:I = 0x8001

.field public static final NS_T_DNAME:I = 0x27

.field public static final NS_T_DNSKEY:I = 0x30

.field public static final NS_T_DS:I = 0x2b

.field public static final NS_T_EID:I = 0x1f

.field public static final NS_T_GPOS:I = 0x1b

.field public static final NS_T_HINFO:I = 0xd

.field public static final NS_T_HIP:I = 0x37

.field public static final NS_T_INVALID:I = 0x0

.field public static final NS_T_IPSECKEY:I = 0x2d

.field public static final NS_T_ISDN:I = 0x14

.field public static final NS_T_IXFR:I = 0xfb

.field public static final NS_T_KEY:I = 0x19

.field public static final NS_T_KX:I = 0x24

.field public static final NS_T_LOC:I = 0x1d

.field public static final NS_T_MAILA:I = 0xfe

.field public static final NS_T_MAILB:I = 0xfd

.field public static final NS_T_MAX:I = 0x10000

.field public static final NS_T_MB:I = 0x7

.field public static final NS_T_MD:I = 0x3

.field public static final NS_T_MF:I = 0x4

.field public static final NS_T_MG:I = 0x8

.field public static final NS_T_MINFO:I = 0xe

.field public static final NS_T_MR:I = 0x9

.field public static final NS_T_MX:I = 0xf

.field public static final NS_T_NAPTR:I = 0x23

.field public static final NS_T_NIMLOC:I = 0x20

.field public static final NS_T_NS:I = 0x2

.field public static final NS_T_NSAP:I = 0x16

.field public static final NS_T_NSAP_PTR:I = 0x17

.field public static final NS_T_NSEC:I = 0x2f

.field public static final NS_T_NSEC3:I = 0x32

.field public static final NS_T_NSEC3PARAM:I = 0x33

.field public static final NS_T_NULL:I = 0xa

.field public static final NS_T_NXT:I = 0x1e

.field public static final NS_T_OPT:I = 0x29

.field public static final NS_T_PTR:I = 0xc

.field public static final NS_T_PX:I = 0x1a

.field public static final NS_T_RP:I = 0x11

.field public static final NS_T_RRSIG:I = 0x2e

.field public static final NS_T_RT:I = 0x15

.field public static final NS_T_SIG:I = 0x18

.field public static final NS_T_SINK:I = 0x28

.field public static final NS_T_SOA:I = 0x6

.field public static final NS_T_SPF:I = 0x63

.field public static final NS_T_SRV:I = 0x21

.field public static final NS_T_SSHFP:I = 0x2c

.field public static final NS_T_TKEY:I = 0xf9

.field public static final NS_T_TSIG:I = 0xfa

.field public static final NS_T_TXT:I = 0x10

.field public static final NS_T_WKS:I = 0xb

.field public static final NS_T_X25:I = 0x13

.field public static final NS_T_ZXFR:I = 0x100

.field public static final PDM_OFF:I = 0x1

.field public static final PDM_OPPORTUNISTIC:I = 0x2

.field public static final PDM_STRICT:I = 0x3

.field public static final PDM_UNKNOWN:I = 0x0

.field public static final RC_EAI_ADDRFAMILY:I = 0x1

.field public static final RC_EAI_AGAIN:I = 0x2

.field public static final RC_EAI_BADFLAGS:I = 0x3

.field public static final RC_EAI_BADHINTS:I = 0xc

.field public static final RC_EAI_FAIL:I = 0x4

.field public static final RC_EAI_FAMILY:I = 0x5

.field public static final RC_EAI_MAX:I = 0x100

.field public static final RC_EAI_MEMORY:I = 0x6

.field public static final RC_EAI_NODATA:I = 0x7

.field public static final RC_EAI_NONAME:I = 0x8

.field public static final RC_EAI_NO_ERROR:I = 0x0

.field public static final RC_EAI_OVERFLOW:I = 0xe

.field public static final RC_EAI_PROTOCOL:I = 0xd

.field public static final RC_EAI_SERVICE:I = 0x9

.field public static final RC_EAI_SOCKTYPE:I = 0xa

.field public static final RC_EAI_SYSTEM:I = 0xb

.field public static final RC_RESOLV_TIMEOUT:I = 0xff

.field public static final TRANSPORT_BLUETOOTH:I = 0x2

.field public static final TRANSPORT_DEFAULT:I = 0x0

.field public static final TRANSPORT_ETHERNET:I = 0x3

.field public static final TRANSPORT_LOWPAN:I = 0x6

.field public static final TRANSPORT_VPN:I = 0x4

.field public static final TRANSPORT_WIFI:I = 0x1

.field public static final TRANSPORT_WIFI_AWARE:I = 0x5

.field public static final TT_DOT:I = 0x3

.field public static final TT_TCP:I = 0x2

.field public static final TT_UDP:I = 0x1

.field public static final TT_UNKNOWN:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
