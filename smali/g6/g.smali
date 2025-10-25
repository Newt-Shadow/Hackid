.class final Lg6/g;
.super Lg6/l;
.source "SourceFile"


# instance fields
.field final synthetic b:Lm5/j;

.field final synthetic c:Lg6/b;


# direct methods
.method constructor <init>(Lg6/b;Lm5/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg6/g;->c:Lg6/b;

    .line 2
    .line 3
    iput-object p2, p0, Lg6/g;->b:Lm5/j;

    .line 4
    .line 5
    invoke-direct {p0}, Lg6/l;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ld6/n;

    .line 2
    .line 3
    check-cast p2, Lm6/l;

    .line 4
    .line 5
    invoke-virtual {p0}, Lg6/l;->b()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lg6/g;->c:Lg6/b;

    .line 12
    .line 13
    new-instance v1, Lg6/h;

    .line 14
    .line 15
    invoke-direct {v1, v0, p2}, Lg6/h;-><init>(Lg6/b;Lm6/l;)V

    .line 16
    .line 17
    .line 18
    :try_start_0
    iget-object v0, p0, Lg6/g;->b:Lm5/j;

    .line 19
    .line 20
    invoke-virtual {v0}, Lm5/j;->b()Lm5/j$a;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1, v0, v1}, Ld6/n;->o0(Lm5/j$a;Ld6/g;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catch_0
    move-exception p1

    .line 31
    invoke-virtual {p2, p1}, Lm6/l;->d(Ljava/lang/Exception;)Z

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method
