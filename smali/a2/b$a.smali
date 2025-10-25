.class public final La2/b$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La2/b;-><init>(Landroid/content/Context;Lid/l;Lid/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:La2/b;


# direct methods
.method constructor <init>(La2/b;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, La2/b$a;->a:La2/b;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, La2/b$a;->a:La2/b;

    .line 5
    .line 6
    invoke-virtual {p1}, La2/a;->a()Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, La2/b$a;->a:La2/b;

    .line 14
    .line 15
    invoke-virtual {v0}, La2/b;->c()Lid/l;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0, p1}, Lid/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    return-void
.end method
