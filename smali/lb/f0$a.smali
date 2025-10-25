.class public final Llb/f0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llb/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/io/File;

.field b:Z

.field c:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Llb/f0$a;->b:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Llb/f0$a;->c:Z

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iput-object p1, p0, Llb/f0$a;->a:Ljava/io/File;

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 16
    .line 17
    const-string v0, "file == null"

    .line 18
    .line 19
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1
.end method


# virtual methods
.method public a()Llb/f0;
    .locals 5

    .line 1
    iget-object v0, p0, Llb/f0$a;->a:Ljava/io/File;

    .line 2
    .line 3
    iget-boolean v1, p0, Llb/f0$a;->c:Z

    .line 4
    .line 5
    invoke-static {v0, v1}, Llb/f0;->s(Ljava/io/File;Z)Ljava/io/RandomAccessFile;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :try_start_0
    new-instance v1, Llb/f0;

    .line 10
    .line 11
    iget-object v2, p0, Llb/f0$a;->a:Ljava/io/File;

    .line 12
    .line 13
    iget-boolean v3, p0, Llb/f0$a;->b:Z

    .line 14
    .line 15
    iget-boolean v4, p0, Llb/f0$a;->c:Z

    .line 16
    .line 17
    invoke-direct {v1, v2, v0, v3, v4}, Llb/f0;-><init>(Ljava/io/File;Ljava/io/RandomAccessFile;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    return-object v1

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 23
    .line 24
    .line 25
    throw v1
.end method

.method public b(Z)Llb/f0$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Llb/f0$a;->c:Z

    .line 2
    .line 3
    return-object p0
.end method
