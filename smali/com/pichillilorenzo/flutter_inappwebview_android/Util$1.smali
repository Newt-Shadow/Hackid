.class Lcom/pichillilorenzo/flutter_inappwebview_android/Util$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pichillilorenzo/flutter_inappwebview_android/Util;->invokeMethodAndWaitResult(Lio/flutter/plugin/common/MethodChannel;Ljava/lang/String;Ljava/lang/Object;Lcom/pichillilorenzo/flutter_inappwebview_android/types/SyncBaseCallbackResultImpl;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$arguments:Ljava/lang/Object;

.field final synthetic val$callback:Lcom/pichillilorenzo/flutter_inappwebview_android/types/SyncBaseCallbackResultImpl;

.field final synthetic val$channel:Lio/flutter/plugin/common/MethodChannel;

.field final synthetic val$method:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/flutter/plugin/common/MethodChannel;Ljava/lang/String;Ljava/lang/Object;Lcom/pichillilorenzo/flutter_inappwebview_android/types/SyncBaseCallbackResultImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/Util$1;->val$channel:Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/Util$1;->val$method:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/Util$1;->val$arguments:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/Util$1;->val$callback:Lcom/pichillilorenzo/flutter_inappwebview_android/types/SyncBaseCallbackResultImpl;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/Util$1;->val$channel:Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/Util$1;->val$method:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/Util$1;->val$arguments:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/Util$1;->val$callback:Lcom/pichillilorenzo/flutter_inappwebview_android/types/SyncBaseCallbackResultImpl;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, v3}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
