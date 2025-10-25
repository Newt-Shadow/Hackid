.class final Lbb/a$l;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Lid/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbb/a;->m(Ljava/lang/String;Ljava/lang/String;ZZZILad/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lbb/a;

.field final synthetic e:Ljava/io/File;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Z

.field final synthetic h:Z

.field final synthetic i:I

.field final synthetic j:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lbb/a;Ljava/io/File;Ljava/lang/String;ZZIILad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbb/a$l;->c:Ljava/lang/String;

    iput-object p2, p0, Lbb/a$l;->d:Lbb/a;

    iput-object p3, p0, Lbb/a$l;->e:Ljava/io/File;

    iput-object p4, p0, Lbb/a$l;->f:Ljava/lang/String;

    iput-boolean p5, p0, Lbb/a$l;->g:Z

    iput-boolean p6, p0, Lbb/a$l;->h:Z

    iput p7, p0, Lbb/a$l;->i:I

    iput p8, p0, Lbb/a$l;->j:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p9}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILad/e;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lad/e;)Lad/e;
    .locals 10

    .line 1
    new-instance p1, Lbb/a$l;

    iget-object v1, p0, Lbb/a$l;->c:Ljava/lang/String;

    iget-object v2, p0, Lbb/a$l;->d:Lbb/a;

    iget-object v3, p0, Lbb/a$l;->e:Ljava/io/File;

    iget-object v4, p0, Lbb/a$l;->f:Ljava/lang/String;

    iget-boolean v5, p0, Lbb/a$l;->g:Z

    iget-boolean v6, p0, Lbb/a$l;->h:Z

    iget v7, p0, Lbb/a$l;->i:I

    iget v8, p0, Lbb/a$l;->j:I

    move-object v0, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lbb/a$l;-><init>(Ljava/lang/String;Lbb/a;Ljava/io/File;Ljava/lang/String;ZZIILad/e;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ltd/l0;

    check-cast p2, Lad/e;

    invoke-virtual {p0, p1, p2}, Lbb/a$l;->invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lbb/a$l;->create(Ljava/lang/Object;Lad/e;)Lad/e;

    move-result-object p1

    check-cast p1, Lbb/a$l;

    sget-object p2, Lxc/t;->a:Lxc/t;

    invoke-virtual {p1, p2}, Lbb/a$l;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lbb/a$l;->b:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lbb/a$l;->a:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Ljava/io/Closeable;

    .line 15
    .line 16
    :try_start_0
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_2

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :cond_1
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    new-instance p1, Ljava/util/zip/ZipOutputStream;

    .line 34
    .line 35
    new-instance v1, Ljava/io/BufferedOutputStream;

    .line 36
    .line 37
    new-instance v3, Ljava/io/FileOutputStream;

    .line 38
    .line 39
    iget-object v4, p0, Lbb/a$l;->c:Ljava/lang/String;

    .line 40
    .line 41
    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p1, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lbb/a$l;->d:Lbb/a;

    .line 51
    .line 52
    iget-object v3, p0, Lbb/a$l;->e:Ljava/io/File;

    .line 53
    .line 54
    iget-object v4, p0, Lbb/a$l;->f:Ljava/lang/String;

    .line 55
    .line 56
    iget-boolean v5, p0, Lbb/a$l;->g:Z

    .line 57
    .line 58
    iget-boolean v6, p0, Lbb/a$l;->h:Z

    .line 59
    .line 60
    iget v7, p0, Lbb/a$l;->i:I

    .line 61
    .line 62
    iget v8, p0, Lbb/a$l;->j:I

    .line 63
    .line 64
    :try_start_1
    invoke-static {v3}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    if-eqz v6, :cond_2

    .line 68
    .line 69
    move v6, v2

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    const/4 v6, 0x0

    .line 72
    :goto_0
    const/4 v9, 0x0

    .line 73
    iput-object p1, p0, Lbb/a$l;->a:Ljava/lang/Object;

    .line 74
    .line 75
    iput v2, p0, Lbb/a$l;->b:I

    .line 76
    .line 77
    move-object v2, p1

    .line 78
    move-object v10, p0

    .line 79
    invoke-static/range {v1 .. v10}, Lbb/a;->a(Lbb/a;Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;ZZIIILad/e;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 83
    if-ne v1, v0, :cond_3

    .line 84
    .line 85
    return-object v0

    .line 86
    :cond_3
    move-object v0, p1

    .line 87
    move-object p1, v1

    .line 88
    :goto_1
    :try_start_2
    check-cast p1, Ljava/lang/Number;

    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/b;->c(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    const/4 v1, 0x0

    .line 99
    invoke-static {v0, v1}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 100
    .line 101
    .line 102
    return-object p1

    .line 103
    :catchall_1
    move-exception v0

    .line 104
    move-object v11, v0

    .line 105
    move-object v0, p1

    .line 106
    move-object p1, v11

    .line 107
    :goto_2
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 108
    :catchall_2
    move-exception v1

    .line 109
    invoke-static {v0, p1}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 110
    .line 111
    .line 112
    throw v1
.end method
