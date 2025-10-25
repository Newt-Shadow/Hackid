.class public final Lca/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugin/common/EventChannel$StreamHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lca/c;->f(Landroid/app/Activity;Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lca/c;


# direct methods
.method constructor <init>(Lca/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lca/c$b;->a:Lca/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lca/c$b;->a:Lca/c;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lca/c;->e(Lca/c;Lio/flutter/plugin/common/EventChannel$EventSink;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onListen(Ljava/lang/Object;Lio/flutter/plugin/common/EventChannel$EventSink;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lca/c$b;->a:Lca/c;

    .line 2
    .line 3
    invoke-static {p1, p2}, Lca/c;->e(Lca/c;Lio/flutter/plugin/common/EventChannel$EventSink;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
