.class public final Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreInitializeResponse$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreInitializeResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private isAutomaticDataCollectionEnabled:Ljava/lang/Boolean;

.field private name:Ljava/lang/String;

.field private options:Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreFirebaseOptions;

.field private pluginConstants:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreInitializeResponse;
    .locals 2

    .line 1
    new-instance v0, Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreInitializeResponse;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreInitializeResponse;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreInitializeResponse$Builder;->name:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreInitializeResponse;->setName(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreInitializeResponse$Builder;->options:Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreFirebaseOptions;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreInitializeResponse;->setOptions(Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreFirebaseOptions;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreInitializeResponse$Builder;->isAutomaticDataCollectionEnabled:Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreInitializeResponse;->setIsAutomaticDataCollectionEnabled(Ljava/lang/Boolean;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreInitializeResponse$Builder;->pluginConstants:Ljava/util/Map;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreInitializeResponse;->setPluginConstants(Ljava/util/Map;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public setIsAutomaticDataCollectionEnabled(Ljava/lang/Boolean;)Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreInitializeResponse$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreInitializeResponse$Builder;->isAutomaticDataCollectionEnabled:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreInitializeResponse$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreInitializeResponse$Builder;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setOptions(Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreFirebaseOptions;)Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreInitializeResponse$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreInitializeResponse$Builder;->options:Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreFirebaseOptions;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPluginConstants(Ljava/util/Map;)Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreInitializeResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreInitializeResponse$Builder;"
        }
    .end annotation

    .annotation build Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreInitializeResponse$Builder;->pluginConstants:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method
