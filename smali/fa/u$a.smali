.class Lfa/u$a;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfa/u;->m0(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpa/f;

.field final synthetic b:Lfa/u;


# direct methods
.method constructor <init>(Lfa/u;Lpa/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfa/u$a;->b:Lfa/u;

    .line 2
    .line 3
    iput-object p2, p0, Lfa/u$a;->a:Lpa/f;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    .line 1
    const-string p1, "Camera"

    .line 2
    .line 3
    const-string v0, "open | onClosed"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lfa/u$a;->b:Lfa/u;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-static {p1, v0}, Lfa/u;->u(Lfa/u;Lfa/y;)Lfa/y;

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lfa/u$a;->b:Lfa/u;

    .line 15
    .line 16
    invoke-static {p1}, Lfa/u;->C(Lfa/u;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lfa/u$a;->b:Lfa/u;

    .line 20
    .line 21
    invoke-static {p1}, Lfa/u;->B(Lfa/u;)Lfa/o0;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lfa/o0;->i()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    .line 1
    const-string p1, "Camera"

    .line 2
    .line 3
    const-string v0, "open | onDisconnected"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lfa/u$a;->b:Lfa/u;

    .line 9
    .line 10
    invoke-virtual {p1}, Lfa/u;->E()V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lfa/u$a;->b:Lfa/u;

    .line 14
    .line 15
    invoke-static {p1}, Lfa/u;->B(Lfa/u;)Lfa/o0;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "The camera was disconnected."

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lfa/o0;->k(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 1

    .line 1
    const-string p1, "Camera"

    .line 2
    .line 3
    const-string v0, "open | onError"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lfa/u$a;->b:Lfa/u;

    .line 9
    .line 10
    invoke-virtual {p1}, Lfa/u;->E()V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    if-eq p2, p1, :cond_4

    .line 15
    .line 16
    const/4 p1, 0x2

    .line 17
    if-eq p2, p1, :cond_3

    .line 18
    .line 19
    const/4 p1, 0x3

    .line 20
    if-eq p2, p1, :cond_2

    .line 21
    .line 22
    const/4 p1, 0x4

    .line 23
    if-eq p2, p1, :cond_1

    .line 24
    .line 25
    const/4 p1, 0x5

    .line 26
    if-eq p2, p1, :cond_0

    .line 27
    .line 28
    const-string p1, "Unknown camera error"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string p1, "The camera service has encountered a fatal error."

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const-string p1, "The camera device has encountered a fatal error"

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const-string p1, "The camera device could not be opened due to a device policy."

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    const-string p1, "Max cameras in use"

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_4
    const-string p1, "The camera device is in use already."

    .line 44
    .line 45
    :goto_0
    iget-object p2, p0, Lfa/u$a;->b:Lfa/u;

    .line 46
    .line 47
    invoke-static {p2}, Lfa/u;->B(Lfa/u;)Lfa/o0;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p2, p1}, Lfa/o0;->k(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lfa/u$a;->b:Lfa/u;

    .line 2
    .line 3
    new-instance v1, Lfa/u$d;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v0, p1, v2}, Lfa/u$d;-><init>(Lfa/u;Landroid/hardware/camera2/CameraDevice;Lfa/u$a;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lfa/u;->u(Lfa/u;Lfa/y;)Lfa/y;

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p1, p0, Lfa/u$a;->b:Lfa/u;

    .line 13
    .line 14
    invoke-static {p1}, Lfa/u;->x(Lfa/u;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lfa/u$a;->b:Lfa/u;

    .line 18
    .line 19
    iget-object v0, p1, Lfa/u;->u:Lfa/x;

    .line 20
    .line 21
    iget-boolean v1, v0, Lfa/x;->c:Z

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    iget-boolean v0, v0, Lfa/x;->e:Z

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-static {p1}, Lfa/u;->z(Lfa/u;)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    invoke-static {p1}, Lfa/u;->y(Lfa/u;)V

    .line 35
    .line 36
    .line 37
    :goto_1
    iget-object p1, p0, Lfa/u$a;->b:Lfa/u;

    .line 38
    .line 39
    iget-object v0, p1, Lfa/u;->u:Lfa/x;

    .line 40
    .line 41
    iget-boolean v0, v0, Lfa/x;->e:Z

    .line 42
    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    invoke-static {p1}, Lfa/u;->B(Lfa/u;)Lfa/o0;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object p1, p0, Lfa/u$a;->a:Lpa/f;

    .line 50
    .line 51
    invoke-virtual {p1}, Lpa/f;->h()Landroid/util/Size;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    iget-object p1, p0, Lfa/u$a;->a:Lpa/f;

    .line 64
    .line 65
    invoke-virtual {p1}, Lpa/f;->h()Landroid/util/Size;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    iget-object p1, p0, Lfa/u$a;->b:Lfa/u;

    .line 78
    .line 79
    invoke-static {p1}, Lfa/u;->A(Lfa/u;)Lga/d;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Lga/d;->c()Lia/a;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p1}, Lia/a;->d()Lia/b;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    iget-object p1, p0, Lfa/u$a;->b:Lfa/u;

    .line 92
    .line 93
    invoke-static {p1}, Lfa/u;->A(Lfa/u;)Lga/d;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p1}, Lga/d;->b()Lha/a;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p1}, Lha/a;->d()Lha/b;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    iget-object p1, p0, Lfa/u$a;->b:Lfa/u;

    .line 106
    .line 107
    invoke-static {p1}, Lfa/u;->A(Lfa/u;)Lga/d;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p1}, Lga/d;->e()Lka/a;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1}, Lka/a;->d()Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    iget-object p1, p0, Lfa/u$a;->b:Lfa/u;

    .line 124
    .line 125
    invoke-static {p1}, Lfa/u;->A(Lfa/u;)Lga/d;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {p1}, Lga/d;->g()Lma/a;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p1}, Lma/a;->d()Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    invoke-virtual/range {v1 .. v7}, Lfa/o0;->l(Ljava/lang/Integer;Ljava/lang/Integer;Lia/b;Lha/b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :catch_0
    move-exception p1

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    const-string v1, "open | onOpened error: "

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    const-string v1, "Camera"

    .line 168
    .line 169
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    iget-object v0, p0, Lfa/u$a;->b:Lfa/u;

    .line 173
    .line 174
    invoke-static {v0}, Lfa/u;->B(Lfa/u;)Lfa/o0;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-virtual {v0, p1}, Lfa/o0;->k(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    iget-object p1, p0, Lfa/u$a;->b:Lfa/u;

    .line 186
    .line 187
    invoke-virtual {p1}, Lfa/u;->E()V

    .line 188
    .line 189
    .line 190
    :cond_2
    :goto_2
    return-void
.end method
