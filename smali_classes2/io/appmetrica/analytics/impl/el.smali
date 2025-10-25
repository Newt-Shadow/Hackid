.class public final Lio/appmetrica/analytics/impl/el;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/system/PermissionExtractor;


# static fields
.field public static final b:Ljava/lang/String; = "[SimplePermissionExtractor]"


# instance fields
.field public final a:Lio/appmetrica/analytics/coreapi/internal/permission/PermissionStrategy;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/coreapi/internal/permission/PermissionStrategy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/el;->a:Lio/appmetrica/analytics/coreapi/internal/permission/PermissionStrategy;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/coreapi/internal/permission/PermissionStrategy;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/el;->a:Lio/appmetrica/analytics/coreapi/internal/permission/PermissionStrategy;

    .line 2
    .line 3
    return-object v0
.end method

.method public final hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/el;->a:Lio/appmetrica/analytics/coreapi/internal/permission/PermissionStrategy;

    .line 2
    .line 3
    invoke-interface {v0, p2}, Lio/appmetrica/analytics/coreapi/internal/permission/PermissionStrategy;->forbidUsePermission(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_0
    invoke-static {p1, p2}, Lio/appmetrica/analytics/coreutils/internal/services/ContextPermissionChecker;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method
