.class public Lio/flutter/plugins/firebase/messaging/FlutterFirebaseTokenLiveData;
.super Landroidx/lifecycle/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/q;"
    }
.end annotation


# static fields
.field private static instance:Lio/flutter/plugins/firebase/messaging/FlutterFirebaseTokenLiveData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/q;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getInstance()Lio/flutter/plugins/firebase/messaging/FlutterFirebaseTokenLiveData;
    .locals 1

    .line 1
    sget-object v0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseTokenLiveData;->instance:Lio/flutter/plugins/firebase/messaging/FlutterFirebaseTokenLiveData;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseTokenLiveData;

    .line 6
    .line 7
    invoke-direct {v0}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseTokenLiveData;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseTokenLiveData;->instance:Lio/flutter/plugins/firebase/messaging/FlutterFirebaseTokenLiveData;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseTokenLiveData;->instance:Lio/flutter/plugins/firebase/messaging/FlutterFirebaseTokenLiveData;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public postToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/lifecycle/q;->postValue(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
