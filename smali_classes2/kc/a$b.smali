.class public final Lkc/a$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkc/a;->e(Lio/flutter/plugin/common/EventChannel$EventSink;)Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkc/a;

.field final synthetic b:Lio/flutter/plugin/common/EventChannel$EventSink;


# direct methods
.method constructor <init>(Lkc/a;Lio/flutter/plugin/common/EventChannel$EventSink;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkc/a$b;->a:Lkc/a;

    .line 2
    .line 3
    iput-object p2, p0, Lkc/a$b;->b:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "intent"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "status"

    .line 12
    .line 13
    const/4 v0, -0x1

    .line 14
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iget-object p2, p0, Lkc/a$b;->a:Lkc/a;

    .line 19
    .line 20
    iget-object v0, p0, Lkc/a$b;->b:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 21
    .line 22
    invoke-static {p2, p1}, Lkc/a;->a(Lkc/a;I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p2, v0, p1}, Lkc/a;->b(Lkc/a;Lio/flutter/plugin/common/EventChannel$EventSink;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
