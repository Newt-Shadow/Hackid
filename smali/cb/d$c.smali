.class public final Lcb/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugin/common/EventChannel$StreamHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcb/d;->a(Lio/flutter/plugin/common/BinaryMessenger;Landroid/app/Application;Landroid/app/Activity;Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcb/c;


# direct methods
.method constructor <init>(Lcb/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcb/d$c;->a:Lcb/c;

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
    iget-object p1, p0, Lcb/d$c;->a:Lcb/c;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lcb/c;->s(Lio/flutter/plugin/common/EventChannel$EventSink;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onListen(Ljava/lang/Object;Lio/flutter/plugin/common/EventChannel$EventSink;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcb/d$c;->a:Lcb/c;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lcb/c;->s(Lio/flutter/plugin/common/EventChannel$EventSink;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
