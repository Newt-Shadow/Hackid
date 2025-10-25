.class final Lz0/a$a;
.super Lz0/c;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field f:Z

.field final synthetic g:Lz0/a;


# direct methods
.method constructor <init>(Lz0/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lz0/a$a;->g:Lz0/a;

    .line 2
    .line 3
    invoke-direct {p0}, Lz0/c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected b()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lz0/a$a;->g:Lz0/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lz0/a;->E()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method protected g(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lz0/a$a;->g:Lz0/a;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Lz0/a;->y(Lz0/a$a;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected h(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lz0/a$a;->g:Lz0/a;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Lz0/a;->z(Lz0/a$a;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public run()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lz0/a$a;->f:Z

    .line 3
    .line 4
    iget-object v0, p0, Lz0/a$a;->g:Lz0/a;

    .line 5
    .line 6
    invoke-virtual {v0}, Lz0/a;->A()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
