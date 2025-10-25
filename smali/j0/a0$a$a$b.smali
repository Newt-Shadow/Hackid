.class final Lj0/a0$a$a$b;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj0/a0$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Ljava/io/File;

.field final synthetic f:Lvd/v;


# direct methods
.method constructor <init>(Ljava/io/File;Lvd/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj0/a0$a$a$b;->e:Ljava/io/File;

    iput-object p2, p0, Lj0/a0$a$a$b;->f:Lvd/v;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lj0/a0$a$a$b;->invoke(Ljava/lang/String;)V

    sget-object p1, Lxc/t;->a:Lxc/t;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lj0/a0$a$a$b;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lj0/a0$a$a$b;->f:Lvd/v;

    sget-object v0, Lxc/t;->a:Lxc/t;

    invoke-static {p1, v0}, Lvd/n;->b(Lvd/x;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
