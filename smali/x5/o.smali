.class final Lx5/o;
.super Lx5/e;
.source "SourceFile"


# instance fields
.field final synthetic a:Lm6/l;


# direct methods
.method constructor <init>(Lx5/p;Lm6/l;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lx5/o;->a:Lm6/l;

    .line 2
    .line 3
    invoke-direct {p0}, Lx5/e;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final L(Lcom/google/android/gms/common/api/Status;Lc5/e;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    new-instance v0, Lc5/b;

    .line 4
    .line 5
    invoke-virtual {p2}, Lc5/e;->i()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p2}, Lc5/e;->g()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    invoke-direct {v0, v1, p2}, Lc5/b;-><init>(Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    iget-object p2, p0, Lx5/o;->a:Lm6/l;

    .line 19
    .line 20
    invoke-static {p1, v0, p2}, Lm5/v;->a(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lm6/l;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
