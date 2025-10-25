.class public final Lio/appmetrica/analytics/screenshot/impl/r;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/a;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/screenshot/impl/u;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/screenshot/impl/u;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/screenshot/impl/r;->a:Lio/appmetrica/analytics/screenshot/impl/u;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/screenshot/impl/r;->a:Lio/appmetrica/analytics/screenshot/impl/u;

    .line 2
    .line 3
    iget-object v0, v0, Lio/appmetrica/analytics/screenshot/impl/u;->b:Lio/appmetrica/analytics/screenshot/impl/Q;

    .line 4
    .line 5
    const-string v1, "ContentObserverScreenshotCaptor"

    .line 6
    .line 7
    check-cast v0, Lio/appmetrica/analytics/screenshot/impl/v;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/screenshot/impl/v;->a(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lxc/t;->a:Lxc/t;

    .line 13
    .line 14
    return-object v0
.end method
