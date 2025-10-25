.class public final Lqc/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;
.implements Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqc/m$a;,
        Lqc/m$b;,
        Lqc/m$c;
    }
.end annotation


# static fields
.field public static final h:Lqc/m$a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/app/Activity;

.field private c:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

.field private d:Lio/flutter/plugin/common/MethodChannel;

.field private e:Lio/flutter/plugin/common/MethodChannel$Result;

.field private f:Lqc/m$c;

.field private g:Lqc/m$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lqc/m$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lqc/m$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lqc/m;->h:Lqc/m$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final A(ILandroid/content/Intent;)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    const-string p1, "com.google.android.gms.credentials.Credential"

    .line 7
    .line 8
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/google/android/gms/auth/api/credentials/Credential;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    new-instance p2, Lqc/f;

    .line 17
    .line 18
    invoke-direct {p2, p0, p1}, Lqc/f;-><init>(Lqc/m;Lcom/google/android/gms/auth/api/credentials/Credential;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p2}, Lqc/m;->y(Lid/a;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    new-instance p1, Lqc/g;

    .line 26
    .line 27
    invoke-direct {p1, p0}, Lqc/g;-><init>(Lqc/m;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p1}, Lqc/m;->y(Lid/a;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private static final B(Lqc/m;Lcom/google/android/gms/auth/api/credentials/Credential;)Lxc/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lqc/m;->e:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lqc/m;->q(Lcom/google/android/gms/auth/api/credentials/Credential;)Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {v0, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    sget-object p0, Lxc/t;->a:Lxc/t;

    .line 13
    .line 14
    return-object p0
.end method

.method private static final C(Lqc/m;)Lxc/t;
    .locals 1

    .line 1
    iget-object p0, p0, Lqc/m;->e:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-interface {p0, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    sget-object p0, Lxc/t;->a:Lxc/t;

    .line 10
    .line 11
    return-object p0
.end method

.method private final D(ILandroid/content/Intent;)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    const-string p1, "com.google.android.gms.credentials.Credential"

    .line 7
    .line 8
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/google/android/gms/auth/api/credentials/Credential;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    new-instance p2, Lqc/k;

    .line 17
    .line 18
    invoke-direct {p2, p0, p1}, Lqc/k;-><init>(Lqc/m;Lcom/google/android/gms/auth/api/credentials/Credential;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p2}, Lqc/m;->y(Lid/a;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    new-instance p1, Lqc/l;

    .line 26
    .line 27
    invoke-direct {p1, p0}, Lqc/l;-><init>(Lqc/m;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p1}, Lqc/m;->y(Lid/a;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private static final E(Lqc/m;Lcom/google/android/gms/auth/api/credentials/Credential;)Lxc/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lqc/m;->e:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lqc/m;->q(Lcom/google/android/gms/auth/api/credentials/Credential;)Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {v0, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    sget-object p0, Lxc/t;->a:Lxc/t;

    .line 13
    .line 14
    return-object p0
.end method

.method private static final F(Lqc/m;)Lxc/t;
    .locals 1

    .line 1
    iget-object p0, p0, Lqc/m;->e:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-interface {p0, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    sget-object p0, Lxc/t;->a:Lxc/t;

    .line 10
    .line 11
    return-object p0
.end method

.method private final G(I)V
    .locals 1

    .line 1
    new-instance v0, Lqc/h;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lqc/h;-><init>(Lqc/m;I)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lqc/m;->y(Lid/a;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final H(Lqc/m;I)Lxc/t;
    .locals 1

    .line 1
    iget-object p0, p0, Lqc/m;->e:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    sget-object p0, Lxc/t;->a:Lxc/t;

    .line 19
    .line 20
    return-object p0
.end method

.method private final I(ILandroid/content/Intent;)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    const-string p1, "com.google.android.gms.auth.api.phone.EXTRA_SMS_MESSAGE"

    .line 7
    .line 8
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    new-instance p2, Lqc/d;

    .line 13
    .line 14
    invoke-direct {p2, p0, p1}, Lqc/d;-><init>(Lqc/m;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p2}, Lqc/m;->y(Lid/a;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p1, Lqc/e;

    .line 22
    .line 23
    invoke-direct {p1, p0}, Lqc/e;-><init>(Lqc/m;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1}, Lqc/m;->y(Lid/a;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method private static final J(Lqc/m;Ljava/lang/String;)Lxc/t;
    .locals 0

    .line 1
    iget-object p0, p0, Lqc/m;->e:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object p0, Lxc/t;->a:Lxc/t;

    .line 9
    .line 10
    return-object p0
.end method

.method private static final K(Lqc/m;)Lxc/t;
    .locals 1

    .line 1
    iget-object p0, p0, Lqc/m;->e:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-interface {p0, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    sget-object p0, Lxc/t;->a:Lxc/t;

    .line 10
    .line 11
    return-object p0
.end method

.method private final L()V
    .locals 1

    .line 1
    iget-object v0, p0, Lqc/m;->f:Lqc/m$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, v0}, Lqc/m;->V(Landroid/content/BroadcastReceiver;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lqc/m;->f:Lqc/m$c;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private final M()V
    .locals 1

    .line 1
    iget-object v0, p0, Lqc/m;->g:Lqc/m$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, v0}, Lqc/m;->V(Landroid/content/BroadcastReceiver;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lqc/m;->g:Lqc/m$b;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private final N(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 8

    .line 1
    iput-object p2, p0, Lqc/m;->e:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 2
    .line 3
    const-string p2, "showAddAccountButton"

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    check-cast p2, Ljava/lang/Boolean;

    .line 10
    .line 11
    const-string v0, "showCancelButton"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Boolean;

    .line 18
    .line 19
    const-string v1, "isPhoneNumberIdentifierSupported"

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Ljava/lang/Boolean;

    .line 26
    .line 27
    const-string v2, "isEmailAddressIdentifierSupported"

    .line 28
    .line 29
    invoke-virtual {p1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Ljava/lang/Boolean;

    .line 34
    .line 35
    const-string v3, "accountTypes"

    .line 36
    .line 37
    invoke-virtual {p1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Ljava/lang/String;

    .line 42
    .line 43
    const-string v4, "idTokenNonce"

    .line 44
    .line 45
    invoke-virtual {p1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Ljava/lang/String;

    .line 50
    .line 51
    const-string v5, "isIdTokenRequested"

    .line 52
    .line 53
    invoke-virtual {p1, v5}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    check-cast v5, Ljava/lang/Boolean;

    .line 58
    .line 59
    const-string v6, "serverClientId"

    .line 60
    .line 61
    invoke-virtual {p1, v6}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Ljava/lang/String;

    .line 66
    .line 67
    new-instance v6, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;

    .line 68
    .line 69
    invoke-direct {v6}, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;-><init>()V

    .line 70
    .line 71
    .line 72
    new-instance v7, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;

    .line 73
    .line 74
    invoke-direct {v7}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;-><init>()V

    .line 75
    .line 76
    .line 77
    if-eqz p2, :cond_0

    .line 78
    .line 79
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    invoke-virtual {v7, p2}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;->setShowAddAccountButton(Z)Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;

    .line 84
    .line 85
    .line 86
    :cond_0
    if-eqz v0, :cond_1

    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    invoke-virtual {v7, p2}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;->setShowCancelButton(Z)Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;

    .line 93
    .line 94
    .line 95
    :cond_1
    invoke-virtual {v7}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;->build()Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-virtual {v6, p2}, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->setHintPickerConfig(Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;)Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;

    .line 100
    .line 101
    .line 102
    if-eqz v1, :cond_2

    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    invoke-virtual {v6, p2}, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->setPhoneNumberIdentifierSupported(Z)Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;

    .line 109
    .line 110
    .line 111
    :cond_2
    if-eqz v2, :cond_3

    .line 112
    .line 113
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    invoke-virtual {v6, p2}, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->setEmailAddressIdentifierSupported(Z)Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;

    .line 118
    .line 119
    .line 120
    :cond_3
    if-eqz v3, :cond_4

    .line 121
    .line 122
    filled-new-array {v3}, [Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-virtual {v6, p2}, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->setAccountTypes([Ljava/lang/String;)Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;

    .line 127
    .line 128
    .line 129
    :cond_4
    if-eqz v4, :cond_5

    .line 130
    .line 131
    invoke-virtual {v6, v4}, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->setIdTokenNonce(Ljava/lang/String;)Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;

    .line 132
    .line 133
    .line 134
    :cond_5
    if-eqz v5, :cond_6

    .line 135
    .line 136
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 137
    .line 138
    .line 139
    move-result p2

    .line 140
    invoke-virtual {v6, p2}, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->setIdTokenRequested(Z)Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;

    .line 141
    .line 142
    .line 143
    :cond_6
    if-eqz p1, :cond_7

    .line 144
    .line 145
    invoke-virtual {v6, p1}, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->setServerClientId(Ljava/lang/String;)Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;

    .line 146
    .line 147
    .line 148
    :cond_7
    iget-object p1, p0, Lqc/m;->a:Landroid/content/Context;

    .line 149
    .line 150
    if-nez p1, :cond_8

    .line 151
    .line 152
    const-string p1, "mContext"

    .line 153
    .line 154
    invoke-static {p1}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    const/4 p1, 0x0

    .line 158
    :cond_8
    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/Credentials;->getClient(Landroid/content/Context;)Lcom/google/android/gms/auth/api/credentials/CredentialsClient;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {v6}, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->build()Lcom/google/android/gms/auth/api/credentials/HintRequest;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    invoke-virtual {p1, p2}, Lcom/google/android/gms/auth/api/credentials/CredentialsClient;->getHintPickerIntent(Lcom/google/android/gms/auth/api/credentials/HintRequest;)Landroid/app/PendingIntent;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    const-string p2, "getHintPickerIntent(...)"

    .line 171
    .line 172
    invoke-static {p1, p2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lqc/m;->b:Landroid/app/Activity;

    .line 176
    .line 177
    if-eqz v0, :cond_9

    .line 178
    .line 179
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    const/16 v2, 0x2b5c

    .line 187
    .line 188
    const/4 v3, 0x0

    .line 189
    const/4 v4, 0x0

    .line 190
    const/4 v5, 0x0

    .line 191
    const/4 v6, 0x0

    .line 192
    const/4 v7, 0x0

    .line 193
    invoke-static/range {v0 .. v7}, Landroidx/core/app/b;->A(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 194
    .line 195
    .line 196
    :cond_9
    return-void
.end method

.method private final O(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lqc/m;->z(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)Lcom/google/android/gms/auth/api/credentials/Credential;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lqc/m;->a:Landroid/content/Context;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    const-string v0, "mContext"

    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/auth/api/credentials/Credentials;->getClient(Landroid/content/Context;)Lcom/google/android/gms/auth/api/credentials/CredentialsClient;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "getClient(...)"

    .line 23
    .line 24
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/api/credentials/CredentialsClient;->save(Lcom/google/android/gms/auth/api/credentials/Credential;)Lm6/Task;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    new-instance v0, Lqc/j;

    .line 32
    .line 33
    invoke-direct {v0, p2, p0}, Lqc/j;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;Lqc/m;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lm6/Task;->c(Lm6/f;)Lm6/Task;

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private static final P(Lio/flutter/plugin/common/MethodChannel$Result;Lqc/m;Lm6/Task;)V
    .locals 2

    .line 1
    const-string v0, "task"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lm6/Task;->p()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-interface {p0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {p2}, Lm6/Task;->k()Ljava/lang/Exception;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    instance-of v0, p2, Lcom/google/android/gms/common/api/j;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    move-object v0, p2

    .line 27
    check-cast v0, Lcom/google/android/gms/common/api/j;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b;->getStatusCode()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v1, 0x6

    .line 34
    if-ne v0, v1, :cond_1

    .line 35
    .line 36
    iget-object v0, p1, Lqc/m;->b:Landroid/app/Activity;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    :try_start_0
    iput-object p0, p1, Lqc/m;->e:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 41
    .line 42
    check-cast p2, Lcom/google/android/gms/common/api/j;

    .line 43
    .line 44
    const-string p1, "null cannot be cast to non-null type android.app.Activity"

    .line 45
    .line 46
    invoke-static {v0, p1}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/16 p1, 0x2b5e

    .line 50
    .line 51
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/common/api/j;->a(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :catch_0
    move-exception p1

    .line 56
    const-string p2, "Pinput/SmartAuth"

    .line 57
    .line 58
    const-string v0, "Failed to send resolution."

    .line 59
    .line 60
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    .line 62
    .line 63
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 64
    .line 65
    invoke-interface {p0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method private final Q(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lqc/m;->U()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lqc/m;->e:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 5
    .line 6
    new-instance p1, Lqc/m$c;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lqc/m$c;-><init>(Lqc/m;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lqc/m;->f:Lqc/m$c;

    .line 12
    .line 13
    iget-object p1, p0, Lqc/m;->a:Landroid/content/Context;

    .line 14
    .line 15
    const-string v0, "mContext"

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    move-object p1, v1

    .line 24
    :cond_0
    iget-object v2, p0, Lqc/m;->f:Lqc/m$c;

    .line 25
    .line 26
    new-instance v3, Landroid/content/IntentFilter;

    .line 27
    .line 28
    const-string v4, "com.google.android.gms.auth.api.phone.SMS_RETRIEVED"

    .line 29
    .line 30
    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v4, "com.google.android.gms.auth.api.phone.permission.SEND"

    .line 34
    .line 35
    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lqc/m;->a:Landroid/content/Context;

    .line 39
    .line 40
    if-nez p1, :cond_1

    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move-object v1, p1

    .line 47
    :goto_0
    invoke-static {v1}, Lf5/a;->a(Landroid/content/Context;)Lf5/b;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lf5/b;->z()Lm6/Task;

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private final R(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lqc/m;->U()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lqc/m;->e:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 5
    .line 6
    new-instance p2, Lqc/m$b;

    .line 7
    .line 8
    invoke-direct {p2, p0}, Lqc/m$b;-><init>(Lqc/m;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lqc/m;->g:Lqc/m$b;

    .line 12
    .line 13
    iget-object p2, p0, Lqc/m;->a:Landroid/content/Context;

    .line 14
    .line 15
    const-string v0, "mContext"

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    move-object p2, v1

    .line 24
    :cond_0
    iget-object v2, p0, Lqc/m;->g:Lqc/m$b;

    .line 25
    .line 26
    new-instance v3, Landroid/content/IntentFilter;

    .line 27
    .line 28
    const-string v4, "com.google.android.gms.auth.api.phone.SMS_RETRIEVED"

    .line 29
    .line 30
    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v4, "com.google.android.gms.auth.api.phone.permission.SEND"

    .line 34
    .line 35
    invoke-virtual {p2, v2, v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    iget-object p2, p0, Lqc/m;->a:Landroid/content/Context;

    .line 39
    .line 40
    if-nez p2, :cond_1

    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move-object v1, p2

    .line 47
    :goto_0
    invoke-static {v1}, Lf5/a;->a(Landroid/content/Context;)Lf5/b;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    const-string v0, "senderPhoneNumber"

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {p2, p1}, Lf5/b;->A(Ljava/lang/String;)Lm6/Task;

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method private final S(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lqc/m;->f:Lqc/m$c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-direct {p0}, Lqc/m;->L()V

    .line 12
    .line 13
    .line 14
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method private final T(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lqc/m;->g:Lqc/m$b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-direct {p0}, Lqc/m;->M()V

    .line 12
    .line 13
    .line 14
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method private final U()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lqc/m;->L()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lqc/m;->M()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private final V(Landroid/content/BroadcastReceiver;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lqc/m;->a:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "mContext"

    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p1

    .line 18
    const-string v0, "Pinput/SmartAuth"

    .line 19
    .line 20
    const-string v1, "Unregistering receiver failed."

    .line 21
    .line 22
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic a(Lqc/m;I)Lxc/t;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lqc/m;->H(Lqc/m;I)Lxc/t;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lio/flutter/plugin/common/MethodChannel$Result;Lqc/m;ZLm6/Task;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lqc/m;->w(Lio/flutter/plugin/common/MethodChannel$Result;Lqc/m;ZLm6/Task;)V

    return-void
.end method

.method public static synthetic c(Lio/flutter/plugin/common/MethodChannel$Result;Lqc/m;Lm6/Task;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lqc/m;->P(Lio/flutter/plugin/common/MethodChannel$Result;Lqc/m;Lm6/Task;)V

    return-void
.end method

.method public static synthetic d(Lqc/m;)Lxc/t;
    .locals 0

    .line 1
    invoke-static {p0}, Lqc/m;->K(Lqc/m;)Lxc/t;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lio/flutter/plugin/common/MethodChannel$Result;Lm6/Task;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lqc/m;->s(Lio/flutter/plugin/common/MethodChannel$Result;Lm6/Task;)V

    return-void
.end method

.method public static synthetic f(Lqc/m;)Lxc/t;
    .locals 0

    .line 1
    invoke-static {p0}, Lqc/m;->u(Lqc/m;)Lxc/t;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lqc/m;Lcom/google/android/gms/auth/api/credentials/Credential;)Lxc/t;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lqc/m;->E(Lqc/m;Lcom/google/android/gms/auth/api/credentials/Credential;)Lxc/t;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lqc/m;Ljava/lang/String;)Lxc/t;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lqc/m;->J(Lqc/m;Ljava/lang/String;)Lxc/t;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lqc/m;)Lxc/t;
    .locals 0

    .line 1
    invoke-static {p0}, Lqc/m;->C(Lqc/m;)Lxc/t;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lqc/m;)Lxc/t;
    .locals 0

    .line 1
    invoke-static {p0}, Lqc/m;->F(Lqc/m;)Lxc/t;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lqc/m;Lcom/google/android/gms/auth/api/credentials/Credential;)Lxc/t;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lqc/m;->B(Lqc/m;Lcom/google/android/gms/auth/api/credentials/Credential;)Lxc/t;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic l(Lqc/m;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lqc/m;->b:Landroid/app/Activity;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic m(Lqc/m;)Lio/flutter/plugin/common/MethodChannel$Result;
    .locals 0

    .line 1
    iget-object p0, p0, Lqc/m;->e:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic n(Lqc/m;Lid/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lqc/m;->y(Lid/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic o(Lqc/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lqc/m;->L()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic p(Lqc/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lqc/m;->M()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final q(Lcom/google/android/gms/auth/api/credentials/Credential;)Ljava/util/HashMap;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/credentials/Credential;->getAccountType()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "accountType"

    .line 11
    .line 12
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    const-string v1, "familyName"

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/credentials/Credential;->getFamilyName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    const-string v1, "givenName"

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/credentials/Credential;->getGivenName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    const-string v1, "id"

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/credentials/Credential;->getId()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    const-string v1, "name"

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/credentials/Credential;->getName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    const-string v1, "password"

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/credentials/Credential;->getPassword()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/credentials/Credential;->getProfilePictureUri()Landroid/net/Uri;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const-string v1, "profilePictureUri"

    .line 69
    .line 70
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    return-object v0
.end method

.method private final r(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lqc/m;->z(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)Lcom/google/android/gms/auth/api/credentials/Credential;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lqc/m;->a:Landroid/content/Context;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    const-string v0, "mContext"

    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/auth/api/credentials/Credentials;->getClient(Landroid/content/Context;)Lcom/google/android/gms/auth/api/credentials/CredentialsClient;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "getClient(...)"

    .line 23
    .line 24
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/api/credentials/CredentialsClient;->delete(Lcom/google/android/gms/auth/api/credentials/Credential;)Lm6/Task;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    new-instance v0, Lqc/b;

    .line 32
    .line 33
    invoke-direct {v0, p2}, Lqc/b;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lm6/Task;->c(Lm6/f;)Lm6/Task;

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private static final s(Lio/flutter/plugin/common/MethodChannel$Result;Lm6/Task;)V
    .locals 1

    .line 1
    const-string v0, "task"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lm6/Task;->p()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-interface {p0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final t()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lqc/m;->U()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lqc/i;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lqc/i;-><init>(Lqc/m;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0}, Lqc/m;->y(Lid/a;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lqc/m;->b:Landroid/app/Activity;

    .line 14
    .line 15
    iget-object v1, p0, Lqc/m;->c:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v1, p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->removeActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iput-object v0, p0, Lqc/m;->c:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 23
    .line 24
    return-void
.end method

.method private static final u(Lqc/m;)Lxc/t;
    .locals 1

    .line 1
    iget-object p0, p0, Lqc/m;->e:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-interface {p0, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    sget-object p0, Lxc/t;->a:Lxc/t;

    .line 10
    .line 11
    return-object p0
.end method

.method private final v(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 7

    .line 1
    const-string v0, "accountType"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    const-string v1, "serverClientId"

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ljava/lang/String;

    .line 16
    .line 17
    const-string v2, "idTokenNonce"

    .line 18
    .line 19
    invoke-virtual {p1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Ljava/lang/String;

    .line 24
    .line 25
    const-string v3, "isIdTokenRequested"

    .line 26
    .line 27
    invoke-virtual {p1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Ljava/lang/Boolean;

    .line 32
    .line 33
    const-string v4, "isPasswordLoginSupported"

    .line 34
    .line 35
    invoke-virtual {p1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Ljava/lang/Boolean;

    .line 40
    .line 41
    const-string v5, "showResolveDialog"

    .line 42
    .line 43
    invoke-virtual {p1, v5}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Ljava/lang/Boolean;

    .line 48
    .line 49
    if-eqz p1, :cond_0

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/4 p1, 0x0

    .line 57
    :goto_0
    new-instance v5, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;

    .line 58
    .line 59
    invoke-direct {v5}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;-><init>()V

    .line 60
    .line 61
    .line 62
    filled-new-array {v0}, [Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-virtual {v5, v6}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;->setAccountTypes([Ljava/lang/String;)Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    const-string v6, "setAccountTypes(...)"

    .line 71
    .line 72
    invoke-static {v5, v6}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    if-eqz v0, :cond_1

    .line 76
    .line 77
    filled-new-array {v0}, [Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v5, v0}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;->setAccountTypes([Ljava/lang/String;)Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;

    .line 82
    .line 83
    .line 84
    :cond_1
    if-eqz v2, :cond_2

    .line 85
    .line 86
    invoke-virtual {v5, v2}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;->setIdTokenNonce(Ljava/lang/String;)Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;

    .line 87
    .line 88
    .line 89
    :cond_2
    if-eqz v3, :cond_3

    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    invoke-virtual {v5, v0}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;->setIdTokenRequested(Z)Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;

    .line 96
    .line 97
    .line 98
    :cond_3
    if-eqz v4, :cond_4

    .line 99
    .line 100
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    invoke-virtual {v5, v0}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;->setPasswordLoginSupported(Z)Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;

    .line 105
    .line 106
    .line 107
    :cond_4
    if-eqz v1, :cond_5

    .line 108
    .line 109
    invoke-virtual {v5, v1}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;->setServerClientId(Ljava/lang/String;)Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;

    .line 110
    .line 111
    .line 112
    :cond_5
    iget-object v0, p0, Lqc/m;->a:Landroid/content/Context;

    .line 113
    .line 114
    if-nez v0, :cond_6

    .line 115
    .line 116
    const-string v0, "mContext"

    .line 117
    .line 118
    invoke-static {v0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    const/4 v0, 0x0

    .line 122
    :cond_6
    invoke-static {v0}, Lcom/google/android/gms/auth/api/credentials/Credentials;->getClient(Landroid/content/Context;)Lcom/google/android/gms/auth/api/credentials/CredentialsClient;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    const-string v1, "getClient(...)"

    .line 127
    .line 128
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v5}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;->build()Lcom/google/android/gms/auth/api/credentials/CredentialRequest;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/credentials/CredentialsClient;->request(Lcom/google/android/gms/auth/api/credentials/CredentialRequest;)Lm6/Task;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    new-instance v1, Lqc/c;

    .line 140
    .line 141
    invoke-direct {v1, p2, p0, p1}, Lqc/c;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;Lqc/m;Z)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v1}, Lm6/Task;->c(Lm6/f;)Lm6/Task;

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method private static final w(Lio/flutter/plugin/common/MethodChannel$Result;Lqc/m;ZLm6/Task;)V
    .locals 2

    .line 1
    const-string v0, "task"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3}, Lm6/Task;->p()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p3}, Lm6/Task;->l()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p3}, Lm6/Task;->l()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/google/android/gms/auth/api/credentials/CredentialRequestResponse;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/credentials/CredentialRequestResponse;->getCredential()Lcom/google/android/gms/auth/api/credentials/Credential;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {p3}, Lm6/Task;->l()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    check-cast v0, Lcom/google/android/gms/auth/api/credentials/CredentialRequestResponse;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/credentials/CredentialRequestResponse;->getCredential()Lcom/google/android/gms/auth/api/credentials/Credential;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    invoke-direct {p1, v0}, Lqc/m;->q(Lcom/google/android/gms/auth/api/credentials/Credential;)Ljava/util/HashMap;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-interface {p0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_0
    invoke-virtual {p3}, Lm6/Task;->k()Ljava/lang/Exception;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    instance-of v0, p3, Lcom/google/android/gms/common/api/j;

    .line 58
    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    move-object v0, p3

    .line 62
    check-cast v0, Lcom/google/android/gms/common/api/j;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b;->getStatusCode()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    const/4 v1, 0x6

    .line 69
    if-ne v0, v1, :cond_1

    .line 70
    .line 71
    iget-object v0, p1, Lqc/m;->b:Landroid/app/Activity;

    .line 72
    .line 73
    if-eqz v0, :cond_1

    .line 74
    .line 75
    if-eqz p2, :cond_1

    .line 76
    .line 77
    :try_start_0
    iput-object p0, p1, Lqc/m;->e:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 78
    .line 79
    check-cast p3, Lcom/google/android/gms/common/api/j;

    .line 80
    .line 81
    const-string p1, "null cannot be cast to non-null type android.app.Activity"

    .line 82
    .line 83
    invoke-static {v0, p1}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const/16 p1, 0x2b5f

    .line 87
    .line 88
    invoke-virtual {p3, v0, p1}, Lcom/google/android/gms/common/api/j;->a(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :catch_0
    move-exception p1

    .line 93
    const-string p2, "Pinput/SmartAuth"

    .line 94
    .line 95
    const-string p3, "Failed to send resolution."

    .line 96
    .line 97
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    .line 99
    .line 100
    :cond_1
    const/4 p1, 0x0

    .line 101
    invoke-interface {p0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method private final x(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    new-instance v0, Lqc/a;

    .line 2
    .line 3
    iget-object v1, p0, Lqc/m;->a:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const-string v1, "mContext"

    .line 8
    .line 9
    invoke-static {v1}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :cond_0
    invoke-direct {v0, v1}, Lqc/a;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lqc/a;->a()Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-static {v0, v1}, Lyc/m;->R(Ljava/util/List;I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private final y(Lid/a;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-interface {p1}, Lid/a;->invoke()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception p1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "ignoring exception: "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, "Pinput/SmartAuth"

    .line 24
    .line 25
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method private final z(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)Lcom/google/android/gms/auth/api/credentials/Credential;
    .locals 5

    .line 1
    const-string v0, "accountType"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    const-string v1, "id"

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ljava/lang/String;

    .line 16
    .line 17
    const-string v2, "name"

    .line 18
    .line 19
    invoke-virtual {p1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Ljava/lang/String;

    .line 24
    .line 25
    const-string v3, "password"

    .line 26
    .line 27
    invoke-virtual {p1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Ljava/lang/String;

    .line 32
    .line 33
    const-string v4, "profilePictureUri"

    .line 34
    .line 35
    invoke-virtual {p1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Ljava/lang/String;

    .line 40
    .line 41
    if-nez v1, :cond_0

    .line 42
    .line 43
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 44
    .line 45
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    return-object p1

    .line 50
    :cond_0
    new-instance p2, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;

    .line 51
    .line 52
    invoke-direct {p2, v1}, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    invoke-virtual {p2, v0}, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->setAccountType(Ljava/lang/String;)Lcom/google/android/gms/auth/api/credentials/Credential$Builder;

    .line 58
    .line 59
    .line 60
    :cond_1
    if-eqz v2, :cond_2

    .line 61
    .line 62
    invoke-virtual {p2, v2}, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->setName(Ljava/lang/String;)Lcom/google/android/gms/auth/api/credentials/Credential$Builder;

    .line 63
    .line 64
    .line 65
    :cond_2
    if-eqz v3, :cond_3

    .line 66
    .line 67
    invoke-virtual {p2, v3}, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->setPassword(Ljava/lang/String;)Lcom/google/android/gms/auth/api/credentials/Credential$Builder;

    .line 68
    .line 69
    .line 70
    :cond_3
    if-eqz p1, :cond_4

    .line 71
    .line 72
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p2, p1}, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->setProfilePictureUri(Landroid/net/Uri;)Lcom/google/android/gms/auth/api/credentials/Credential$Builder;

    .line 77
    .line 78
    .line 79
    :cond_4
    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->build()Lcom/google/android/gms/auth/api/credentials/Credential;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    return-object p1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lqc/m;->A(ILandroid/content/Intent;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_1
    invoke-direct {p0, p2}, Lqc/m;->G(I)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :pswitch_2
    invoke-direct {p0, p2, p3}, Lqc/m;->I(ILandroid/content/Intent;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :pswitch_3
    invoke-direct {p0, p2, p3}, Lqc/m;->D(ILandroid/content/Intent;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    const/4 p1, 0x1

    .line 21
    return p1

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x2b5c
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 1

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lqc/m;->b:Landroid/app/Activity;

    .line 11
    .line 12
    iput-object p1, p0, Lqc/m;->c:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 13
    .line 14
    invoke-interface {p1, p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 3

    .line 1
    const-string v0, "flutterPluginBinding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    .line 7
    .line 8
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "fman.smart_auth"

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lqc/m;->d:Lio/flutter/plugin/common/MethodChannel;

    .line 18
    .line 19
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lqc/m;->a:Landroid/content/Context;

    .line 24
    .line 25
    iget-object p1, p0, Lqc/m;->d:Lio/flutter/plugin/common/MethodChannel;

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lqc/m;->t()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lqc/m;->t()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lqc/m;->t()V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lqc/m;->d:Lio/flutter/plugin/common/MethodChannel;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iput-object v0, p0, Lqc/m;->d:Lio/flutter/plugin/common/MethodChannel;

    .line 18
    .line 19
    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "result"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v0, :cond_9

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    sparse-switch v1, :sswitch_data_0

    .line 20
    .line 21
    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :sswitch_0
    const-string v1, "deleteCredential"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    goto/16 :goto_0

    .line 33
    .line 34
    :cond_0
    invoke-direct {p0, p1, p2}, Lqc/m;->r(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 35
    .line 36
    .line 37
    goto/16 :goto_1

    .line 38
    .line 39
    :sswitch_1
    const-string v1, "saveCredential"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    goto/16 :goto_0

    .line 48
    .line 49
    :cond_1
    invoke-direct {p0, p1, p2}, Lqc/m;->O(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_1

    .line 53
    .line 54
    :sswitch_2
    const-string v1, "requestHint"

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_2

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    invoke-direct {p0, p1, p2}, Lqc/m;->N(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :sswitch_3
    const-string p1, "stopSmsRetriever"

    .line 68
    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-nez p1, :cond_3

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    invoke-direct {p0, p2}, Lqc/m;->S(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :sswitch_4
    const-string p1, "getAppSignature"

    .line 81
    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-nez p1, :cond_4

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_4
    invoke-direct {p0, p2}, Lqc/m;->x(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :sswitch_5
    const-string p1, "startSmsRetriever"

    .line 94
    .line 95
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-nez p1, :cond_5

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_5
    invoke-direct {p0, p2}, Lqc/m;->Q(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :sswitch_6
    const-string v1, "startSmsUserConsent"

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-nez v0, :cond_6

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_6
    invoke-direct {p0, p1, p2}, Lqc/m;->R(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :sswitch_7
    const-string v1, "getCredential"

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-nez v0, :cond_7

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_7
    invoke-direct {p0, p1, p2}, Lqc/m;->v(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :sswitch_8
    const-string p1, "stopSmsUserConsent"

    .line 133
    .line 134
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-nez p1, :cond_8

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_8
    invoke-direct {p0, p2}, Lqc/m;->T(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_9
    :goto_0
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    .line 146
    .line 147
    .line 148
    :goto_1
    return-void

    .line 149
    :sswitch_data_0
    .sparse-switch
        -0x3f9f6ca8 -> :sswitch_8
        -0x3a7b5fb3 -> :sswitch_7
        -0x7fbd848 -> :sswitch_6
        0x238b3df -> :sswitch_5
        0x6e1a60d -> :sswitch_4
        0x2ffb877f -> :sswitch_3
        0x448765b6 -> :sswitch_2
        0x6e798db4 -> :sswitch_1
        0x7c9d7062 -> :sswitch_0
    .end sparse-switch
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 1

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lqc/m;->b:Landroid/app/Activity;

    .line 11
    .line 12
    iput-object p1, p0, Lqc/m;->c:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 13
    .line 14
    invoke-interface {p1, p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
