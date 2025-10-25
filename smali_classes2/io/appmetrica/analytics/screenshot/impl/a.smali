.class public final Lio/appmetrica/analytics/screenshot/impl/a;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/a;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/screenshot/impl/d;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/screenshot/impl/d;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/screenshot/impl/a;->a:Lio/appmetrica/analytics/screenshot/impl/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method

.method public static final a(Lio/appmetrica/analytics/screenshot/impl/d;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/screenshot/impl/d;->b:Lio/appmetrica/analytics/screenshot/impl/Q;

    const-string v0, "AndroidApiScreenshotCaptor"

    .line 2
    check-cast p0, Lio/appmetrica/analytics/screenshot/impl/v;

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/screenshot/impl/v;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Activity$ScreenCaptureCallback;
    .locals 2

    .line 3
    iget-object v0, p0, Lio/appmetrica/analytics/screenshot/impl/a;->a:Lio/appmetrica/analytics/screenshot/impl/d;

    new-instance v1, Ltc/a;

    invoke-direct {v1, v0}, Ltc/a;-><init>(Lio/appmetrica/analytics/screenshot/impl/d;)V

    return-object v1
.end method

.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/appmetrica/analytics/screenshot/impl/a;->a()Landroid/app/Activity$ScreenCaptureCallback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
