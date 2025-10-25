.class final Lcom/google/android/gms/measurement/internal/h6;
.super Lr/h;
.source "SourceFile"


# instance fields
.field final synthetic j:Lcom/google/android/gms/measurement/internal/o6;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/o6;I)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/h6;->j:Lcom/google/android/gms/measurement/internal/o6;

    .line 5
    .line 6
    const/16 p1, 0x14

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lr/h;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/h6;->j:Lcom/google/android/gms/measurement/internal/o6;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/o6;->o(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/c1;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method
