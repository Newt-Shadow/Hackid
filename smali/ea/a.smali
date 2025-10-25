.class public final synthetic Lea/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfa/d0$b;


# instance fields
.field public final synthetic a:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lea/a;->a:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    return-void
.end method


# virtual methods
.method public final a(Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lea/a;->a:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    invoke-static {v0, p1}, Lea/b;->c(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;)V

    return-void
.end method
