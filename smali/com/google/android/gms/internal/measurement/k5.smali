.class public final Lcom/google/android/gms/internal/measurement/k5;
.super Lcom/google/android/gms/internal/measurement/fb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/jc;


# direct methods
.method synthetic constructor <init>([B)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/l5;->X()Lcom/google/android/gms/internal/measurement/l5;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/fb;-><init>(Lcom/google/android/gms/internal/measurement/hb;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fb;->b:Lcom/google/android/gms/internal/measurement/hb;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/measurement/l5;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/l5;->N()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final t()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fb;->b:Lcom/google/android/gms/internal/measurement/hb;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/measurement/l5;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/l5;->H()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final u(I)Lcom/google/android/gms/internal/measurement/j5;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fb;->b:Lcom/google/android/gms/internal/measurement/hb;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/measurement/l5;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/l5;->I(I)Lcom/google/android/gms/internal/measurement/j5;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final v(ILcom/google/android/gms/internal/measurement/i5;)Lcom/google/android/gms/internal/measurement/k5;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fb;->l()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fb;->b:Lcom/google/android/gms/internal/measurement/hb;

    .line 5
    .line 6
    check-cast v0, Lcom/google/android/gms/internal/measurement/l5;

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/fb;->p()Lcom/google/android/gms/internal/measurement/hb;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    check-cast p2, Lcom/google/android/gms/internal/measurement/j5;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/l5;->U(ILcom/google/android/gms/internal/measurement/j5;)V

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public final w()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fb;->b:Lcom/google/android/gms/internal/measurement/hb;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/measurement/l5;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/l5;->J()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public final x()Lcom/google/android/gms/internal/measurement/k5;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fb;->l()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fb;->b:Lcom/google/android/gms/internal/measurement/hb;

    .line 5
    .line 6
    check-cast v0, Lcom/google/android/gms/internal/measurement/l5;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/l5;->V()V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public final y()Lcom/google/android/gms/internal/measurement/k5;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fb;->l()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fb;->b:Lcom/google/android/gms/internal/measurement/hb;

    .line 5
    .line 6
    check-cast v0, Lcom/google/android/gms/internal/measurement/l5;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/l5;->W()V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public final z()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fb;->b:Lcom/google/android/gms/internal/measurement/hb;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/measurement/l5;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/l5;->M()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method
