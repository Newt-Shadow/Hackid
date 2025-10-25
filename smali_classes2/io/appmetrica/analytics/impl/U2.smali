.class public final Lio/appmetrica/analytics/impl/U2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Wm;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Xm;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Xm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/Xm;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/U2;->a:Lio/appmetrica/analytics/impl/Xm;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/Vm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/Vm;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/U2;->a:Lio/appmetrica/analytics/impl/Xm;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/appmetrica/analytics/impl/Xm;->a()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {p1, v0}, Lio/appmetrica/analytics/impl/Vm;->a(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
