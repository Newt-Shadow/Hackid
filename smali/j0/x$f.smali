.class final Lj0/x$f;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj0/x;-><init>(Lad/i;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Lj0/x;


# direct methods
.method constructor <init>(Lj0/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj0/x$f;->e:Lj0/x;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Ljava/io/File;
    .locals 2

    .line 1
    iget-object v0, p0, Lj0/x$f;->e:Lj0/x;

    .line 2
    .line 3
    invoke-static {v0}, Lj0/x;->j(Lj0/x;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Lj0/x;->g(Lj0/x;Ljava/lang/String;)Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lj0/x$f;->e:Lj0/x;

    .line 12
    .line 13
    invoke-static {v1, v0}, Lj0/x;->f(Lj0/x;Ljava/io/File;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lj0/x$f;->b()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
