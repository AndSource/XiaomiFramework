.class Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus$1;
.super Ljava/lang/Object;
.source "LensSdkParamsProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueByNumber(I)Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "number"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus;->forNumber(I)Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "number"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus$1;->findValueByNumber(I)Lcom/google/android/apps/lens/library/base/proto/LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus;

    move-result-object p0

    return-object p0
.end method
