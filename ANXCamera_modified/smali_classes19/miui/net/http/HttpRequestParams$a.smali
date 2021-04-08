.class Lmiui/net/http/HttpRequestParams$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/net/http/HttpRequestParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public contentLength:J

.field public contentType:Ljava/lang/String;

.field public iS:Ljava/io/InputStream;

.field public jS:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/net/http/HttpRequestParams$a;->iS:Ljava/io/InputStream;

    iput-wide p2, p0, Lmiui/net/http/HttpRequestParams$a;->contentLength:J

    if-nez p4, :cond_0

    const-string p4, "nofilename"

    :cond_0
    iput-object p4, p0, Lmiui/net/http/HttpRequestParams$a;->jS:Ljava/lang/String;

    iput-object p5, p0, Lmiui/net/http/HttpRequestParams$a;->contentType:Ljava/lang/String;

    return-void
.end method
