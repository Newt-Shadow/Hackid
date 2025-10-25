.class final Lbb/a$d;
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


# instance fields
.field a:I

.field final synthetic b:Ljava/util/zip/ZipOutputStream;

.field final synthetic c:Ljava/util/zip/ZipEntry;


# direct methods
.method constructor <init>(Ljava/util/zip/ZipOutputStream;Ljava/util/zip/ZipEntry;Lad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbb/a$d;->b:Ljava/util/zip/ZipOutputStream;

    iput-object p2, p0, Lbb/a$d;->c:Ljava/util/zip/ZipEntry;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILad/e;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lad/e;)Lad/e;
    .locals 2

    .line 1
    new-instance p1, Lbb/a$d;

    iget-object v0, p0, Lbb/a$d;->b:Ljava/util/zip/ZipOutputStream;

    iget-object v1, p0, Lbb/a$d;->c:Ljava/util/zip/ZipEntry;

    invoke-direct {p1, v0, v1, p2}, Lbb/a$d;-><init>(Ljava/util/zip/ZipOutputStream;Ljava/util/zip/ZipEntry;Lad/e;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ltd/l0;

    check-cast p2, Lad/e;

    invoke-virtual {p0, p1, p2}, Lbb/a$d;->invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lbb/a$d;->create(Ljava/lang/Object;Lad/e;)Lad/e;

    move-result-object p1

    check-cast p1, Lbb/a$d;

    sget-object p2, Lxc/t;->a:Lxc/t;

    invoke-virtual {p1, p2}, Lbb/a$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lbb/a$d;->a:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lbb/a$d;->b:Ljava/util/zip/ZipOutputStream;

    .line 12
    .line 13
    iget-object v0, p0, Lbb/a$d;->c:Ljava/util/zip/ZipEntry;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 16
    .line 17
    .line 18
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1
.end method
