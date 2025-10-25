.class public final synthetic Lz1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid/l;


# instance fields
.field public final synthetic a:Lz1/b;

.field public final synthetic b:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;


# direct methods
.method public synthetic constructor <init>(Lz1/b;Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz1/a;->a:Lz1/b;

    iput-object p2, p0, Lz1/a;->b:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lz1/a;->a:Lz1/b;

    iget-object v1, p0, Lz1/a;->b:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    check-cast p1, Lio/flutter/plugin/common/EventChannel$EventSink;

    invoke-static {v0, v1, p1}, Lz1/b;->a(Lz1/b;Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;Lio/flutter/plugin/common/EventChannel$EventSink;)Lxc/t;

    move-result-object p1

    return-object p1
.end method
