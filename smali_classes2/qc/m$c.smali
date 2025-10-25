.class public final Lqc/m$c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqc/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lqc/m;


# direct methods
.method public constructor <init>(Lqc/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lqc/m$c;->a:Lqc/m;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lqc/m;Ljava/lang/String;)Lxc/t;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lqc/m$c;->f(Lqc/m;Ljava/lang/String;)Lxc/t;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lqc/m;)Lxc/t;
    .locals 0

    .line 1
    invoke-static {p0}, Lqc/m$c;->h(Lqc/m;)Lxc/t;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lqc/m;)Lxc/t;
    .locals 0

    .line 1
    invoke-static {p0}, Lqc/m$c;->g(Lqc/m;)Lxc/t;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lqc/m;)Lxc/t;
    .locals 0

    .line 1
    invoke-static {p0}, Lqc/m$c;->j(Lqc/m;)Lxc/t;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lqc/m;)Lxc/t;
    .locals 0

    .line 1
    invoke-static {p0}, Lqc/m$c;->i(Lqc/m;)Lxc/t;

    move-result-object p0

    return-object p0
.end method

.method private static final f(Lqc/m;Ljava/lang/String;)Lxc/t;
    .locals 0

    .line 1
    invoke-static {p0}, Lqc/m;->m(Lqc/m;)Lio/flutter/plugin/common/MethodChannel$Result;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    sget-object p0, Lxc/t;->a:Lxc/t;

    .line 11
    .line 12
    return-object p0
.end method

.method private static final g(Lqc/m;)Lxc/t;
    .locals 1

    .line 1
    invoke-static {p0}, Lqc/m;->m(Lqc/m;)Lio/flutter/plugin/common/MethodChannel$Result;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-interface {p0, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    sget-object p0, Lxc/t;->a:Lxc/t;

    .line 12
    .line 13
    return-object p0
.end method

.method private static final h(Lqc/m;)Lxc/t;
    .locals 1

    .line 1
    invoke-static {p0}, Lqc/m;->m(Lqc/m;)Lio/flutter/plugin/common/MethodChannel$Result;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-interface {p0, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    sget-object p0, Lxc/t;->a:Lxc/t;

    .line 12
    .line 13
    return-object p0
.end method

.method private static final i(Lqc/m;)Lxc/t;
    .locals 1

    .line 1
    invoke-static {p0}, Lqc/m;->m(Lqc/m;)Lio/flutter/plugin/common/MethodChannel$Result;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-interface {p0, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    sget-object p0, Lxc/t;->a:Lxc/t;

    .line 12
    .line 13
    return-object p0
.end method

.method private static final j(Lqc/m;)Lxc/t;
    .locals 1

    .line 1
    invoke-static {p0}, Lqc/m;->m(Lqc/m;)Lio/flutter/plugin/common/MethodChannel$Result;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-interface {p0, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    sget-object p0, Lxc/t;->a:Lxc/t;

    .line 12
    .line 13
    return-object p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

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
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "com.google.android.gms.auth.api.phone.SMS_RETRIEVED"

    .line 16
    .line 17
    invoke-static {v0, p1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_4

    .line 22
    .line 23
    iget-object p1, p0, Lqc/m$c;->a:Lqc/m;

    .line 24
    .line 25
    invoke-static {p1}, Lqc/m;->o(Lqc/m;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string v0, "Pinput/SmartAuth"

    .line 33
    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    const-string v1, "com.google.android.gms.auth.api.phone.EXTRA_STATUS"

    .line 44
    .line 45
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_3

    .line 50
    .line 51
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    const-string v1, "null cannot be cast to non-null type com.google.android.gms.common.api.Status"

    .line 63
    .line 64
    invoke-static {p2, v1}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    check-cast p2, Lcom/google/android/gms/common/api/Status;

    .line 68
    .line 69
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Status;->i()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_1

    .line 74
    .line 75
    const/16 p1, 0xf

    .line 76
    .line 77
    if-eq v1, p1, :cond_0

    .line 78
    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v1, "SMS Retriever API failed with status code: "

    .line 85
    .line 86
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Status;->i()I

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string p2, ", check if SMS contains correct app signature"

    .line 97
    .line 98
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lqc/m$c;->a:Lqc/m;

    .line 109
    .line 110
    new-instance p2, Lqc/v;

    .line 111
    .line 112
    invoke-direct {p2, p1}, Lqc/v;-><init>(Lqc/m;)V

    .line 113
    .line 114
    .line 115
    invoke-static {p1, p2}, Lqc/m;->n(Lqc/m;Lid/a;)V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_0
    const-string p1, "SMS Retriever API timed out, check if SMS contains correct app signature"

    .line 120
    .line 121
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Lqc/m$c;->a:Lqc/m;

    .line 125
    .line 126
    new-instance p2, Lqc/u;

    .line 127
    .line 128
    invoke-direct {p2, p1}, Lqc/u;-><init>(Lqc/m;)V

    .line 129
    .line 130
    .line 131
    invoke-static {p1, p2}, Lqc/m;->n(Lqc/m;Lid/a;)V

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_1
    const-string p2, "com.google.android.gms.auth.api.phone.EXTRA_SMS_MESSAGE"

    .line 136
    .line 137
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    if-eqz p1, :cond_2

    .line 142
    .line 143
    iget-object p2, p0, Lqc/m$c;->a:Lqc/m;

    .line 144
    .line 145
    new-instance v0, Lqc/s;

    .line 146
    .line 147
    invoke-direct {v0, p2, p1}, Lqc/s;-><init>(Lqc/m;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-static {p2, v0}, Lqc/m;->n(Lqc/m;Lid/a;)V

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_2
    const-string p1, "Retrieved SMS is null, check if SMS contains correct app signature"

    .line 155
    .line 156
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    iget-object p1, p0, Lqc/m$c;->a:Lqc/m;

    .line 160
    .line 161
    new-instance p2, Lqc/t;

    .line 162
    .line 163
    invoke-direct {p2, p1}, Lqc/t;-><init>(Lqc/m;)V

    .line 164
    .line 165
    .line 166
    invoke-static {p1, p2}, Lqc/m;->n(Lqc/m;Lid/a;)V

    .line 167
    .line 168
    .line 169
    goto :goto_0

    .line 170
    :cond_3
    const-string p1, "SMS Retriever API failed with no status code, check if SMS contains correct app signature"

    .line 171
    .line 172
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    iget-object p1, p0, Lqc/m$c;->a:Lqc/m;

    .line 176
    .line 177
    new-instance p2, Lqc/w;

    .line 178
    .line 179
    invoke-direct {p2, p1}, Lqc/w;-><init>(Lqc/m;)V

    .line 180
    .line 181
    .line 182
    invoke-static {p1, p2}, Lqc/m;->n(Lqc/m;Lid/a;)V

    .line 183
    .line 184
    .line 185
    :cond_4
    :goto_0
    return-void
.end method
