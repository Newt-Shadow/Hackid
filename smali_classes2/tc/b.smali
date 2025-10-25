.class public final synthetic Ltc/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/backport/FunctionWithThrowable;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/screenshot/impl/d0;

.field public final synthetic b:Lio/appmetrica/analytics/screenshot/impl/a0;

.field public final synthetic c:Lio/appmetrica/analytics/screenshot/impl/m;


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/screenshot/impl/d0;Lio/appmetrica/analytics/screenshot/impl/a0;Lio/appmetrica/analytics/screenshot/impl/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltc/b;->a:Lio/appmetrica/analytics/screenshot/impl/d0;

    iput-object p2, p0, Ltc/b;->b:Lio/appmetrica/analytics/screenshot/impl/a0;

    iput-object p3, p0, Ltc/b;->c:Lio/appmetrica/analytics/screenshot/impl/m;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Ltc/b;->a:Lio/appmetrica/analytics/screenshot/impl/d0;

    iget-object v1, p0, Ltc/b;->b:Lio/appmetrica/analytics/screenshot/impl/a0;

    iget-object v2, p0, Ltc/b;->c:Lio/appmetrica/analytics/screenshot/impl/m;

    check-cast p1, Landroid/app/ActivityManager;

    invoke-static {v0, v1, v2, p1}, Lio/appmetrica/analytics/screenshot/impl/a0;->a(Lio/appmetrica/analytics/screenshot/impl/d0;Lio/appmetrica/analytics/screenshot/impl/a0;Lio/appmetrica/analytics/screenshot/impl/m;Landroid/app/ActivityManager;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
