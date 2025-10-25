.class final Lj0/y$a;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj0/y;->a(Lj0/e0;Lk0/b;Ljava/util/List;Ltd/l0;Lid/a;)Lj0/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Ltd/l0;


# direct methods
.method constructor <init>(Ltd/l0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj0/y$a;->e:Ltd/l0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;)Lj0/t;
    .locals 2

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lj0/x;

    .line 7
    .line 8
    iget-object v1, p0, Lj0/y$a;->e:Ltd/l0;

    .line 9
    .line 10
    invoke-interface {v1}, Ltd/l0;->n()Lad/i;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1, p1}, Lj0/x;-><init>(Lad/i;Ljava/io/File;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lj0/y$a;->a(Ljava/io/File;)Lj0/t;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
