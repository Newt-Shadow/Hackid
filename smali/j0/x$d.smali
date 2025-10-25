.class final Lj0/x$d;
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
    iput-object p1, p0, Lj0/x$d;->e:Lj0/x;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Lj0/f0;
    .locals 3

    .line 1
    sget-object v0, Lj0/f0;->b:Lj0/f0$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lj0/f0$a;->d()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lj0/x$d$a;

    .line 7
    .line 8
    iget-object v2, p0, Lj0/x$d;->e:Lj0/x;

    .line 9
    .line 10
    invoke-direct {v1, v2}, Lj0/x$d$a;-><init>(Lj0/x;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lj0/f0$a;->a(Lid/a;)Lj0/f0;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lj0/x$d;->b()Lj0/f0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
