.class public final Llb/c$e;
.super Lne/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llb/c;->j(Ljava/lang/String;Lid/l;)Lne/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Llb/c;

.field final synthetic c:Lid/l;


# direct methods
.method constructor <init>(Llb/c;Lid/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Llb/c$e;->b:Llb/c;

    .line 2
    .line 3
    iput-object p2, p0, Llb/c$e;->c:Lid/l;

    .line 4
    .line 5
    invoke-direct {p0}, Lne/z;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public b()Lne/v;
    .locals 1

    .line 1
    iget-object v0, p0, Llb/c$e;->b:Llb/c;

    .line 2
    .line 3
    invoke-static {v0}, Llb/c;->b(Llb/c;)Lne/v;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public e(Laf/e;)V
    .locals 2

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Laf/e;->P0()Ljava/io/OutputStream;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p0, Llb/c$e;->c:Lid/l;

    .line 11
    .line 12
    :try_start_0
    invoke-interface {v0, p1}, Lid/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    sget-object v0, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-static {p1, v0}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 24
    :catchall_1
    move-exception v1

    .line 25
    invoke-static {p1, v0}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    throw v1
.end method
