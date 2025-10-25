.class public final Lm5/k1;
.super Lm5/i1;
.source "SourceFile"


# instance fields
.field public final c:Lm5/v0;


# direct methods
.method public constructor <init>(Lm5/v0;Lm6/l;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, v0, p2}, Lm5/i1;-><init>(ILm6/l;)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lm5/k1;->c:Lm5/v0;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final bridge synthetic d(Lm5/z;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final f(Lm5/i0;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lm5/k1;->c:Lm5/v0;

    .line 2
    .line 3
    iget-object p1, p1, Lm5/v0;->a:Lm5/o;

    .line 4
    .line 5
    invoke-virtual {p1}, Lm5/o;->f()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final g(Lm5/i0;)[Ll5/d;
    .locals 0

    .line 1
    iget-object p1, p0, Lm5/k1;->c:Lm5/v0;

    .line 2
    .line 3
    iget-object p1, p1, Lm5/v0;->a:Lm5/o;

    .line 4
    .line 5
    invoke-virtual {p1}, Lm5/o;->c()[Ll5/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final h(Lm5/i0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lm5/k1;->c:Lm5/v0;

    .line 2
    .line 3
    iget-object v0, v0, Lm5/v0;->a:Lm5/o;

    .line 4
    .line 5
    invoke-virtual {p1}, Lm5/i0;->v()Lcom/google/android/gms/common/api/a$f;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lm5/i1;->b:Lm6/l;

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lm5/o;->d(Lcom/google/android/gms/common/api/a$b;Lm6/l;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lm5/k1;->c:Lm5/v0;

    .line 15
    .line 16
    iget-object v0, v0, Lm5/v0;->a:Lm5/o;

    .line 17
    .line 18
    invoke-virtual {v0}, Lm5/o;->b()Lm5/j$a;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1}, Lm5/i0;->x()Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object v1, p0, Lm5/k1;->c:Lm5/v0;

    .line 29
    .line 30
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method
