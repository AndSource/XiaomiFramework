.class final enum Lmiui/cta/CTAPermission$Permission;
.super Ljava/lang/Enum;
.source "CTAPermission.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cta/CTAPermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Permission"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/cta/CTAPermission$Permission;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/cta/CTAPermission$Permission;

.field public static final enum PERMISSION_ACCESS_LOCATION:Lmiui/cta/CTAPermission$Permission;

.field public static final enum PERMISSION_ACCESS_NETWORK:Lmiui/cta/CTAPermission$Permission;

.field public static final enum PERMISSION_CALL_PHONE:Lmiui/cta/CTAPermission$Permission;

.field public static final enum PERMISSION_CAMERA:Lmiui/cta/CTAPermission$Permission;

.field public static final enum PERMISSION_READ_CALL_LOG:Lmiui/cta/CTAPermission$Permission;

.field public static final enum PERMISSION_READ_CONTACTS:Lmiui/cta/CTAPermission$Permission;

.field public static final enum PERMISSION_READ_SMS:Lmiui/cta/CTAPermission$Permission;

.field public static final enum PERMISSION_RECEIVE_SMS:Lmiui/cta/CTAPermission$Permission;

.field public static final enum PERMISSION_SEND_SMS:Lmiui/cta/CTAPermission$Permission;

.field public static final enum PERMISSION_WRITE_CALL_LOG:Lmiui/cta/CTAPermission$Permission;

.field public static final enum PERMISSION_WRITE_CONTACTS:Lmiui/cta/CTAPermission$Permission;

.field public static final enum PERMISSION_WRITE_SMS:Lmiui/cta/CTAPermission$Permission;


# instance fields
.field final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lmiui/cta/CTAPermission$Permission;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "PERMISSION_ACCESS_NETWORK"

    invoke-direct {v0, v3, v1, v2}, Lmiui/cta/CTAPermission$Permission;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmiui/cta/CTAPermission$Permission;->PERMISSION_ACCESS_NETWORK:Lmiui/cta/CTAPermission$Permission;

    new-instance v0, Lmiui/cta/CTAPermission$Permission;

    const/4 v3, 0x2

    const-string v4, "PERMISSION_READ_SMS"

    invoke-direct {v0, v4, v2, v3}, Lmiui/cta/CTAPermission$Permission;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmiui/cta/CTAPermission$Permission;->PERMISSION_READ_SMS:Lmiui/cta/CTAPermission$Permission;

    new-instance v0, Lmiui/cta/CTAPermission$Permission;

    const/4 v4, 0x4

    const-string v5, "PERMISSION_WRITE_SMS"

    invoke-direct {v0, v5, v3, v4}, Lmiui/cta/CTAPermission$Permission;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmiui/cta/CTAPermission$Permission;->PERMISSION_WRITE_SMS:Lmiui/cta/CTAPermission$Permission;

    new-instance v0, Lmiui/cta/CTAPermission$Permission;

    const/4 v5, 0x3

    const/16 v6, 0x8

    const-string v7, "PERMISSION_RECEIVE_SMS"

    invoke-direct {v0, v7, v5, v6}, Lmiui/cta/CTAPermission$Permission;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmiui/cta/CTAPermission$Permission;->PERMISSION_RECEIVE_SMS:Lmiui/cta/CTAPermission$Permission;

    new-instance v0, Lmiui/cta/CTAPermission$Permission;

    const-string v7, "PERMISSION_SEND_SMS"

    const/16 v8, 0x10

    invoke-direct {v0, v7, v4, v8}, Lmiui/cta/CTAPermission$Permission;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmiui/cta/CTAPermission$Permission;->PERMISSION_SEND_SMS:Lmiui/cta/CTAPermission$Permission;

    new-instance v0, Lmiui/cta/CTAPermission$Permission;

    const/4 v7, 0x5

    const-string v8, "PERMISSION_CALL_PHONE"

    const/16 v9, 0x20

    invoke-direct {v0, v8, v7, v9}, Lmiui/cta/CTAPermission$Permission;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmiui/cta/CTAPermission$Permission;->PERMISSION_CALL_PHONE:Lmiui/cta/CTAPermission$Permission;

    new-instance v0, Lmiui/cta/CTAPermission$Permission;

    const/4 v8, 0x6

    const-string v9, "PERMISSION_READ_CONTACTS"

    const/16 v10, 0x40

    invoke-direct {v0, v9, v8, v10}, Lmiui/cta/CTAPermission$Permission;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmiui/cta/CTAPermission$Permission;->PERMISSION_READ_CONTACTS:Lmiui/cta/CTAPermission$Permission;

    new-instance v0, Lmiui/cta/CTAPermission$Permission;

    const/4 v9, 0x7

    const-string v10, "PERMISSION_WRITE_CONTACTS"

    const/16 v11, 0x80

    invoke-direct {v0, v10, v9, v11}, Lmiui/cta/CTAPermission$Permission;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmiui/cta/CTAPermission$Permission;->PERMISSION_WRITE_CONTACTS:Lmiui/cta/CTAPermission$Permission;

    new-instance v0, Lmiui/cta/CTAPermission$Permission;

    const-string v10, "PERMISSION_READ_CALL_LOG"

    const/16 v11, 0x100

    invoke-direct {v0, v10, v6, v11}, Lmiui/cta/CTAPermission$Permission;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmiui/cta/CTAPermission$Permission;->PERMISSION_READ_CALL_LOG:Lmiui/cta/CTAPermission$Permission;

    new-instance v0, Lmiui/cta/CTAPermission$Permission;

    const/16 v10, 0x9

    const-string v11, "PERMISSION_WRITE_CALL_LOG"

    const/16 v12, 0x200

    invoke-direct {v0, v11, v10, v12}, Lmiui/cta/CTAPermission$Permission;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmiui/cta/CTAPermission$Permission;->PERMISSION_WRITE_CALL_LOG:Lmiui/cta/CTAPermission$Permission;

    new-instance v0, Lmiui/cta/CTAPermission$Permission;

    const/16 v11, 0xa

    const-string v12, "PERMISSION_CAMERA"

    const/16 v13, 0x400

    invoke-direct {v0, v12, v11, v13}, Lmiui/cta/CTAPermission$Permission;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmiui/cta/CTAPermission$Permission;->PERMISSION_CAMERA:Lmiui/cta/CTAPermission$Permission;

    new-instance v0, Lmiui/cta/CTAPermission$Permission;

    const/16 v12, 0xb

    const-string v13, "PERMISSION_ACCESS_LOCATION"

    const/16 v14, 0x800

    invoke-direct {v0, v13, v12, v14}, Lmiui/cta/CTAPermission$Permission;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmiui/cta/CTAPermission$Permission;->PERMISSION_ACCESS_LOCATION:Lmiui/cta/CTAPermission$Permission;

    const/16 v0, 0xc

    new-array v0, v0, [Lmiui/cta/CTAPermission$Permission;

    sget-object v13, Lmiui/cta/CTAPermission$Permission;->PERMISSION_ACCESS_NETWORK:Lmiui/cta/CTAPermission$Permission;

    aput-object v13, v0, v1

    sget-object v1, Lmiui/cta/CTAPermission$Permission;->PERMISSION_READ_SMS:Lmiui/cta/CTAPermission$Permission;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/cta/CTAPermission$Permission;->PERMISSION_WRITE_SMS:Lmiui/cta/CTAPermission$Permission;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/cta/CTAPermission$Permission;->PERMISSION_RECEIVE_SMS:Lmiui/cta/CTAPermission$Permission;

    aput-object v1, v0, v5

    sget-object v1, Lmiui/cta/CTAPermission$Permission;->PERMISSION_SEND_SMS:Lmiui/cta/CTAPermission$Permission;

    aput-object v1, v0, v4

    sget-object v1, Lmiui/cta/CTAPermission$Permission;->PERMISSION_CALL_PHONE:Lmiui/cta/CTAPermission$Permission;

    aput-object v1, v0, v7

    sget-object v1, Lmiui/cta/CTAPermission$Permission;->PERMISSION_READ_CONTACTS:Lmiui/cta/CTAPermission$Permission;

    aput-object v1, v0, v8

    sget-object v1, Lmiui/cta/CTAPermission$Permission;->PERMISSION_WRITE_CONTACTS:Lmiui/cta/CTAPermission$Permission;

    aput-object v1, v0, v9

    sget-object v1, Lmiui/cta/CTAPermission$Permission;->PERMISSION_READ_CALL_LOG:Lmiui/cta/CTAPermission$Permission;

    aput-object v1, v0, v6

    sget-object v1, Lmiui/cta/CTAPermission$Permission;->PERMISSION_WRITE_CALL_LOG:Lmiui/cta/CTAPermission$Permission;

    aput-object v1, v0, v10

    sget-object v1, Lmiui/cta/CTAPermission$Permission;->PERMISSION_CAMERA:Lmiui/cta/CTAPermission$Permission;

    aput-object v1, v0, v11

    sget-object v1, Lmiui/cta/CTAPermission$Permission;->PERMISSION_ACCESS_LOCATION:Lmiui/cta/CTAPermission$Permission;

    aput-object v1, v0, v12

    sput-object v0, Lmiui/cta/CTAPermission$Permission;->$VALUES:[Lmiui/cta/CTAPermission$Permission;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lmiui/cta/CTAPermission$Permission;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/cta/CTAPermission$Permission;
    .locals 1

    const-class v0, Lmiui/cta/CTAPermission$Permission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/cta/CTAPermission$Permission;

    return-object v0
.end method

.method public static values()[Lmiui/cta/CTAPermission$Permission;
    .locals 1

    sget-object v0, Lmiui/cta/CTAPermission$Permission;->$VALUES:[Lmiui/cta/CTAPermission$Permission;

    invoke-virtual {v0}, [Lmiui/cta/CTAPermission$Permission;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/cta/CTAPermission$Permission;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/cta/CTAPermission$Permission;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
