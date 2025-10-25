.class final Lbb/a$e;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Lid/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbb/a;->g(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;ZZIIILad/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbb/a$e$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:Ljava/lang/Object;

.field d:Ljava/lang/Object;

.field e:I

.field final synthetic f:Ljava/io/File;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Z

.field final synthetic i:Lkotlin/jvm/internal/a0;

.field final synthetic j:I

.field final synthetic k:Lbb/a;

.field final synthetic l:I

.field final synthetic m:Ljava/util/zip/ZipOutputStream;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;ZLkotlin/jvm/internal/a0;ILbb/a;ILjava/util/zip/ZipOutputStream;Lad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbb/a$e;->f:Ljava/io/File;

    iput-object p2, p0, Lbb/a$e;->g:Ljava/lang/String;

    iput-boolean p3, p0, Lbb/a$e;->h:Z

    iput-object p4, p0, Lbb/a$e;->i:Lkotlin/jvm/internal/a0;

    iput p5, p0, Lbb/a$e;->j:I

    iput-object p6, p0, Lbb/a$e;->k:Lbb/a;

    iput p7, p0, Lbb/a$e;->l:I

    iput-object p8, p0, Lbb/a$e;->m:Ljava/util/zip/ZipOutputStream;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p9}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILad/e;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lad/e;)Lad/e;
    .locals 10

    .line 1
    new-instance p1, Lbb/a$e;

    iget-object v1, p0, Lbb/a$e;->f:Ljava/io/File;

    iget-object v2, p0, Lbb/a$e;->g:Ljava/lang/String;

    iget-boolean v3, p0, Lbb/a$e;->h:Z

    iget-object v4, p0, Lbb/a$e;->i:Lkotlin/jvm/internal/a0;

    iget v5, p0, Lbb/a$e;->j:I

    iget-object v6, p0, Lbb/a$e;->k:Lbb/a;

    iget v7, p0, Lbb/a$e;->l:I

    iget-object v8, p0, Lbb/a$e;->m:Ljava/util/zip/ZipOutputStream;

    move-object v0, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lbb/a$e;-><init>(Ljava/io/File;Ljava/lang/String;ZLkotlin/jvm/internal/a0;ILbb/a;ILjava/util/zip/ZipOutputStream;Lad/e;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ltd/l0;

    check-cast p2, Lad/e;

    invoke-virtual {p0, p1, p2}, Lbb/a$e;->invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lbb/a$e;->create(Ljava/lang/Object;Lad/e;)Lad/e;

    move-result-object p1

    check-cast p1, Lbb/a$e;

    sget-object p2, Lxc/t;->a:Lxc/t;

    invoke-virtual {p1, p2}, Lbb/a$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, v7, Lbb/a$e;->e:I

    .line 8
    .line 9
    const-string v9, "FlutterArchivePlugin"

    .line 10
    .line 11
    const/4 v12, 0x1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    if-ne v1, v12, :cond_0

    .line 15
    .line 16
    iget-object v0, v7, Lbb/a$e;->d:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 19
    .line 20
    iget-object v1, v7, Lbb/a$e;->c:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Ljava/io/FileInputStream;

    .line 23
    .line 24
    iget-object v2, v7, Lbb/a$e;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v2, Ljava/util/zip/ZipOutputStream;

    .line 27
    .line 28
    iget-object v3, v7, Lbb/a$e;->a:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v3, Ljava/io/Closeable;

    .line 31
    .line 32
    :try_start_0
    invoke-static/range {p1 .. p1}, Lxc/m;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    move-object v13, v1

    .line 36
    move-object/from16 v1, p1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    move-object v1, v0

    .line 41
    goto/16 :goto_3

    .line 42
    .line 43
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 46
    .line 47
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :cond_1
    invoke-static/range {p1 .. p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    new-instance v13, Ljava/io/FileInputStream;

    .line 55
    .line 56
    iget-object v1, v7, Lbb/a$e;->f:Ljava/io/File;

    .line 57
    .line 58
    invoke-direct {v13, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 59
    .line 60
    .line 61
    iget-object v1, v7, Lbb/a$e;->g:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v2, v7, Lbb/a$e;->f:Ljava/io/File;

    .line 64
    .line 65
    iget-boolean v3, v7, Lbb/a$e;->h:Z

    .line 66
    .line 67
    iget-object v4, v7, Lbb/a$e;->i:Lkotlin/jvm/internal/a0;

    .line 68
    .line 69
    iget v5, v7, Lbb/a$e;->j:I

    .line 70
    .line 71
    iget-object v6, v7, Lbb/a$e;->k:Lbb/a;

    .line 72
    .line 73
    iget v14, v7, Lbb/a$e;->l:I

    .line 74
    .line 75
    iget-object v15, v7, Lbb/a$e;->m:Ljava/util/zip/ZipOutputStream;

    .line 76
    .line 77
    :try_start_1
    new-instance v8, Ljava/util/zip/ZipEntry;

    .line 78
    .line 79
    invoke-direct {v8, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    .line 83
    .line 84
    .line 85
    move-result-wide v10

    .line 86
    invoke-virtual {v8, v10, v11}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 90
    .line 91
    .line 92
    move-result-wide v1

    .line 93
    invoke-virtual {v8, v1, v2}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 94
    .line 95
    .line 96
    if-eqz v3, :cond_5

    .line 97
    .line 98
    iget v1, v4, Lkotlin/jvm/internal/a0;->a:I

    .line 99
    .line 100
    int-to-double v1, v1

    .line 101
    int-to-double v3, v5

    .line 102
    div-double/2addr v1, v3

    .line 103
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 104
    .line 105
    mul-double v4, v1, v3

    .line 106
    .line 107
    const-string v1, "Waiting reportProgress..."

    .line 108
    .line 109
    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    iput-object v13, v7, Lbb/a$e;->a:Ljava/lang/Object;

    .line 113
    .line 114
    iput-object v15, v7, Lbb/a$e;->b:Ljava/lang/Object;

    .line 115
    .line 116
    iput-object v13, v7, Lbb/a$e;->c:Ljava/lang/Object;

    .line 117
    .line 118
    iput-object v8, v7, Lbb/a$e;->d:Ljava/lang/Object;

    .line 119
    .line 120
    iput v12, v7, Lbb/a$e;->e:I

    .line 121
    .line 122
    move-object v1, v6

    .line 123
    move v2, v14

    .line 124
    move-object v3, v8

    .line 125
    move-object/from16 v6, p0

    .line 126
    .line 127
    invoke-static/range {v1 .. v6}, Lbb/a;->c(Lbb/a;ILjava/util/zip/ZipEntry;DLad/e;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 131
    if-ne v1, v0, :cond_2

    .line 132
    .line 133
    return-object v0

    .line 134
    :cond_2
    move-object v0, v8

    .line 135
    move-object v3, v13

    .line 136
    move-object v2, v15

    .line 137
    :goto_0
    :try_start_2
    check-cast v1, Lbb/b;

    .line 138
    .line 139
    new-instance v4, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    const-string v5, "...reportProgress: "

    .line 145
    .line 146
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    sget-object v4, Lbb/a$e$a;->a:[I

    .line 160
    .line 161
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    aget v1, v4, v1

    .line 166
    .line 167
    if-eq v1, v12, :cond_4

    .line 168
    .line 169
    const/4 v4, 0x2

    .line 170
    if-eq v1, v4, :cond_3

    .line 171
    .line 172
    sget-object v0, Lxc/t;->a:Lxc/t;

    .line 173
    .line 174
    :goto_1
    move-object v13, v3

    .line 175
    const/4 v1, 0x0

    .line 176
    goto :goto_2

    .line 177
    :cond_3
    new-instance v0, Ljava/util/concurrent/CancellationException;

    .line 178
    .line 179
    const-string v1, "Operation cancelled"

    .line 180
    .line 181
    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    throw v0

    .line 185
    :cond_4
    invoke-virtual {v2, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 186
    .line 187
    .line 188
    const/4 v0, 0x0

    .line 189
    const/4 v1, 0x0

    .line 190
    const/4 v4, 0x2

    .line 191
    invoke-static {v13, v2, v0, v4, v1}, Lgd/a;->b(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J

    .line 192
    .line 193
    .line 194
    move-result-wide v4

    .line 195
    invoke-static {v4, v5}, Lkotlin/coroutines/jvm/internal/b;->d(J)Ljava/lang/Long;

    .line 196
    .line 197
    .line 198
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 199
    goto :goto_1

    .line 200
    :cond_5
    :try_start_3
    invoke-virtual {v15, v8}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 201
    .line 202
    .line 203
    const/4 v0, 0x0

    .line 204
    const/4 v1, 0x0

    .line 205
    const/4 v2, 0x2

    .line 206
    invoke-static {v13, v15, v0, v2, v1}, Lgd/a;->b(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J

    .line 207
    .line 208
    .line 209
    move-result-wide v2

    .line 210
    invoke-static {v2, v3}, Lkotlin/coroutines/jvm/internal/b;->d(J)Ljava/lang/Long;

    .line 211
    .line 212
    .line 213
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 214
    :goto_2
    invoke-static {v13, v1}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 215
    .line 216
    .line 217
    return-object v0

    .line 218
    :catchall_1
    move-exception v0

    .line 219
    move-object v1, v0

    .line 220
    move-object v3, v13

    .line 221
    :goto_3
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 222
    :catchall_2
    move-exception v0

    .line 223
    move-object v2, v0

    .line 224
    invoke-static {v3, v1}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 225
    .line 226
    .line 227
    throw v2
.end method
