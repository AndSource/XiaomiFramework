.class public final Lio/reactivex/internal/operators/maybe/MaybeFromSingle;
.super Lio/reactivex/Maybe;
.source "MaybeFromSingle.java"

# interfaces
.implements Lio/reactivex/internal/fuseable/HasUpstreamSingleSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/MaybeFromSingle$FromSingleObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Maybe<",
        "TT;>;",
        "Lio/reactivex/internal/fuseable/HasUpstreamSingleSource<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final source:Lio/reactivex/SingleSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleSource<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/SingleSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleSource<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/Maybe;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeFromSingle;->source:Lio/reactivex/SingleSource;

    return-void
.end method


# virtual methods
.method public source()Lio/reactivex/SingleSource;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/SingleSource<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lio/reactivex/internal/operators/maybe/MaybeFromSingle;->source:Lio/reactivex/SingleSource;

    return-object p0
.end method

.method protected subscribeActual(Lio/reactivex/MaybeObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lio/reactivex/internal/operators/maybe/MaybeFromSingle;->source:Lio/reactivex/SingleSource;

    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeFromSingle$FromSingleObserver;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/maybe/MaybeFromSingle$FromSingleObserver;-><init>(Lio/reactivex/MaybeObserver;)V

    invoke-interface {p0, v0}, Lio/reactivex/SingleSource;->subscribe(Lio/reactivex/SingleObserver;)V

    return-void
.end method
