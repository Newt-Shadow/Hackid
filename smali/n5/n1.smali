.class public final Ln5/n1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final f:Landroid/net/Uri;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Landroid/content/ComponentName;

.field private final d:I

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/net/Uri$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "content"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "com.google.android.gms.chimera"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Ln5/n1;->f:Landroid/net/Uri;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-object p2, p0, Ln5/n1;->a:Ljava/lang/String;

    iput-object p2, p0, Ln5/n1;->b:Ljava/lang/String;

    invoke-static {p1}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Ln5/n1;->c:Landroid/content/ComponentName;

    const/16 p1, 0x1081

    iput p1, p0, Ln5/n1;->d:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Ln5/n1;->e:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Ln5/n1;->a:Ljava/lang/String;

    .line 3
    invoke-static {p2}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    iput-object p2, p0, Ln5/n1;->b:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Ln5/n1;->c:Landroid/content/ComponentName;

    const/16 p1, 0x1081

    iput p1, p0, Ln5/n1;->d:I

    iput-boolean p4, p0, Ln5/n1;->e:Z

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/ComponentName;
    .locals 1

    .line 1
    iget-object v0, p0, Ln5/n1;->c:Landroid/content/ComponentName;

    return-object v0
.end method

.method public final b(Landroid/content/Context;)Landroid/content/Intent;
    .locals 5

    .line 1
    const-string v0, "ConnectionStatusConfig"

    .line 2
    .line 3
    iget-object v1, p0, Ln5/n1;->a:Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_5

    .line 6
    .line 7
    iget-boolean v1, p0, Ln5/n1;->e:Z

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_4

    .line 11
    .line 12
    new-instance v1, Landroid/os/Bundle;

    .line 13
    .line 14
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v3, p0, Ln5/n1;->a:Ljava/lang/String;

    .line 18
    .line 19
    const-string v4, "serviceActionBundleKey"

    .line 20
    .line 21
    invoke-virtual {v1, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    sget-object v3, Ln5/n1;->f:Landroid/net/Uri;

    .line 29
    .line 30
    invoke-virtual {p1, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    .line 31
    .line 32
    .line 33
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    :try_start_1
    const-string v3, "serviceIntentCall"

    .line 37
    .line 38
    invoke-virtual {p1, v3, v2, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 39
    .line 40
    .line 41
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    :try_start_2
    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :catch_0
    move-exception p1

    .line 47
    goto :goto_1

    .line 48
    :catch_1
    move-exception p1

    .line 49
    goto :goto_1

    .line 50
    :catchall_0
    move-exception v1

    .line 51
    :try_start_3
    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->release()Z

    .line 52
    .line 53
    .line 54
    throw v1

    .line 55
    :cond_0
    new-instance p1, Landroid/os/RemoteException;

    .line 56
    .line 57
    const-string v1, "Failed to acquire ContentProviderClient"

    .line 58
    .line 59
    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    .line 63
    :catch_2
    move-exception p1

    .line 64
    goto :goto_0

    .line 65
    :catch_3
    move-exception p1

    .line 66
    :goto_0
    move-object v1, v2

    .line 67
    :goto_1
    const-string v3, "Dynamic intent resolution failed: "

    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    :goto_2
    if-eqz v1, :cond_3

    .line 81
    .line 82
    const-string p1, "serviceResponseIntentKey"

    .line 83
    .line 84
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Landroid/content/Intent;

    .line 89
    .line 90
    if-nez p1, :cond_2

    .line 91
    .line 92
    const-string v2, "serviceMissingResolutionIntentKey"

    .line 93
    .line 94
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    check-cast v1, Landroid/app/PendingIntent;

    .line 99
    .line 100
    if-nez v1, :cond_1

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_1
    iget-object p1, p0, Ln5/n1;->a:Ljava/lang/String;

    .line 104
    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v3, "Dynamic lookup for intent failed for action "

    .line 111
    .line 112
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string p1, " but has possible resolution"

    .line 119
    .line 120
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    new-instance p1, Ln5/b1;

    .line 131
    .line 132
    new-instance v0, Ll5/b;

    .line 133
    .line 134
    const/16 v2, 0x19

    .line 135
    .line 136
    invoke-direct {v0, v2, v1}, Ll5/b;-><init>(ILandroid/app/PendingIntent;)V

    .line 137
    .line 138
    .line 139
    invoke-direct {p1, v0}, Ln5/b1;-><init>(Ll5/b;)V

    .line 140
    .line 141
    .line 142
    throw p1

    .line 143
    :cond_2
    :goto_3
    move-object v2, p1

    .line 144
    :cond_3
    if-nez v2, :cond_4

    .line 145
    .line 146
    iget-object p1, p0, Ln5/n1;->a:Ljava/lang/String;

    .line 147
    .line 148
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    const-string v1, "Dynamic lookup for intent failed for action: "

    .line 153
    .line 154
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    :cond_4
    if-nez v2, :cond_6

    .line 162
    .line 163
    iget-object p1, p0, Ln5/n1;->a:Ljava/lang/String;

    .line 164
    .line 165
    new-instance v0, Landroid/content/Intent;

    .line 166
    .line 167
    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    iget-object p1, p0, Ln5/n1;->b:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    return-object p1

    .line 177
    :cond_5
    new-instance p1, Landroid/content/Intent;

    .line 178
    .line 179
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 180
    .line 181
    .line 182
    iget-object v0, p0, Ln5/n1;->c:Landroid/content/ComponentName;

    .line 183
    .line 184
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    :cond_6
    return-object v2
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ln5/n1;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Ln5/n1;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Ln5/n1;

    .line 12
    .line 13
    iget-object v1, p0, Ln5/n1;->a:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Ln5/n1;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Ln5/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object v1, p0, Ln5/n1;->b:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v3, p1, Ln5/n1;->b:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v1, v3}, Ln5/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    iget-object v1, p0, Ln5/n1;->c:Landroid/content/ComponentName;

    .line 34
    .line 35
    iget-object v3, p1, Ln5/n1;->c:Landroid/content/ComponentName;

    .line 36
    .line 37
    invoke-static {v1, v3}, Ln5/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    iget-boolean v1, p0, Ln5/n1;->e:Z

    .line 44
    .line 45
    iget-boolean p1, p1, Ln5/n1;->e:Z

    .line 46
    .line 47
    if-ne v1, p1, :cond_2

    .line 48
    .line 49
    return v0

    .line 50
    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Ln5/n1;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Ln5/n1;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Ln5/n1;->c:Landroid/content/ComponentName;

    .line 6
    .line 7
    const/16 v3, 0x1081

    .line 8
    .line 9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    iget-boolean v4, p0, Ln5/n1;->e:Z

    .line 14
    .line 15
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Ln5/o;->b([Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ln5/n1;->a:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ln5/n1;->c:Landroid/content/ComponentName;

    .line 6
    .line 7
    invoke-static {v0}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Ln5/n1;->c:Landroid/content/ComponentName;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_0
    return-object v0
.end method
