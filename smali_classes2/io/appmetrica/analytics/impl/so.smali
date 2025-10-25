.class public final synthetic Lio/appmetrica/analytics/impl/so;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/backport/FunctionWithThrowable;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/app/ActivityManager;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/C2;->c(Landroid/app/ActivityManager;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
