.class public final Landroidx/activity/j$g;
.super Lf/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/j;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic i:Landroidx/activity/j;


# direct methods
.method constructor <init>(Landroidx/activity/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/activity/j$g;->i:Landroidx/activity/j;

    .line 2
    .line 3
    invoke-direct {p0}, Lf/e;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic q(Landroidx/activity/j$g;ILandroid/content/IntentSender$SendIntentException;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/activity/j$g;->t(Landroidx/activity/j$g;ILandroid/content/IntentSender$SendIntentException;)V

    return-void
.end method

.method public static synthetic r(Landroidx/activity/j$g;ILg/a$a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/activity/j$g;->s(Landroidx/activity/j$g;ILg/a$a;)V

    return-void
.end method

.method private static final s(Landroidx/activity/j$g;ILg/a$a;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Lg/a$a;->a()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p0, p1, p2}, Lf/e;->f(ILjava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static final t(Landroidx/activity/j$g;ILandroid/content/IntentSender$SendIntentException;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION"

    .line 13
    .line 14
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, p1, v0, p2}, Lf/e;->e(IILandroid/content/Intent;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public i(ILg/a;Ljava/lang/Object;Landroidx/core/app/c;)V
    .locals 9

    .line 1
    const-string v0, "contract"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/activity/j$g;->i:Landroidx/activity/j;

    .line 7
    .line 8
    invoke-virtual {p2, v1, p3}, Lg/a;->b(Landroid/content/Context;Ljava/lang/Object;)Lg/a$a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance p2, Landroid/os/Handler;

    .line 15
    .line 16
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 21
    .line 22
    .line 23
    new-instance p3, Landroidx/activity/l;

    .line 24
    .line 25
    invoke-direct {p3, p0, p1, v0}, Landroidx/activity/l;-><init>(Landroidx/activity/j$g;ILg/a$a;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    invoke-virtual {p2, v1, p3}, Lg/a;->a(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    if-eqz p3, :cond_1

    .line 41
    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    invoke-static {p3}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p3}, Landroid/os/Bundle;->getClassLoader()Ljava/lang/ClassLoader;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    if-nez p3, :cond_1

    .line 54
    .line 55
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    const-string p3, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    .line 63
    .line 64
    invoke-virtual {p2, p3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    invoke-virtual {p2, p3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    .line 71
    .line 72
    .line 73
    move-result-object p4

    .line 74
    invoke-virtual {p2, p3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    move-object v8, p4

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    if-eqz p4, :cond_3

    .line 80
    .line 81
    invoke-virtual {p4}, Landroidx/core/app/c;->b()Landroid/os/Bundle;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    goto :goto_0

    .line 86
    :cond_3
    const/4 p3, 0x0

    .line 87
    :goto_0
    move-object v8, p3

    .line 88
    :goto_1
    const-string p3, "androidx.activity.result.contract.action.REQUEST_PERMISSIONS"

    .line 89
    .line 90
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p4

    .line 94
    invoke-static {p3, p4}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result p3

    .line 98
    if-eqz p3, :cond_5

    .line 99
    .line 100
    const-string p3, "androidx.activity.result.contract.extra.PERMISSIONS"

    .line 101
    .line 102
    invoke-virtual {p2, p3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    if-nez p2, :cond_4

    .line 107
    .line 108
    const/4 p2, 0x0

    .line 109
    new-array p2, p2, [Ljava/lang/String;

    .line 110
    .line 111
    :cond_4
    invoke-static {v1, p2, p1}, Landroidx/core/app/b;->v(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_5
    const-string p3, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    .line 116
    .line 117
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p4

    .line 121
    invoke-static {p3, p4}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result p3

    .line 125
    if-eqz p3, :cond_6

    .line 126
    .line 127
    const-string p3, "androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST"

    .line 128
    .line 129
    invoke-virtual {p2, p3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    check-cast p2, Lf/g;

    .line 134
    .line 135
    :try_start_0
    invoke-static {p2}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p2}, Lf/g;->d()Landroid/content/IntentSender;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {p2}, Lf/g;->a()Landroid/content/Intent;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    invoke-virtual {p2}, Lf/g;->b()I

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    invoke-virtual {p2}, Lf/g;->c()I

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    const/4 v7, 0x0

    .line 155
    move v3, p1

    .line 156
    invoke-static/range {v1 .. v8}, Landroidx/core/app/b;->A(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :catch_0
    move-exception p2

    .line 161
    new-instance p3, Landroid/os/Handler;

    .line 162
    .line 163
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 164
    .line 165
    .line 166
    move-result-object p4

    .line 167
    invoke-direct {p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 168
    .line 169
    .line 170
    new-instance p4, Landroidx/activity/m;

    .line 171
    .line 172
    invoke-direct {p4, p0, p1, p2}, Landroidx/activity/m;-><init>(Landroidx/activity/j$g;ILandroid/content/IntentSender$SendIntentException;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 176
    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_6
    invoke-static {v1, p2, p1, v8}, Landroidx/core/app/b;->z(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 180
    .line 181
    .line 182
    :goto_2
    return-void
.end method
