.class public Lio/flutter/plugins/firebase/messaging/ContextHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static applicationContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lio/flutter/plugins/firebase/messaging/ContextHolder;->applicationContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public static setApplicationContext(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "FLTFireContextHolder"

    .line 2
    .line 3
    const-string v1, "received application context."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    sput-object p0, Lio/flutter/plugins/firebase/messaging/ContextHolder;->applicationContext:Landroid/content/Context;

    .line 9
    .line 10
    return-void
.end method
