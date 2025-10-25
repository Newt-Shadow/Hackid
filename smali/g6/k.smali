.class abstract Lg6/k;
.super Ld6/f;
.source "SourceFile"


# instance fields
.field private final a:Lm6/l;


# direct methods
.method public constructor <init>(Lm6/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld6/f;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lg6/k;->a:Lm6/l;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final i0(Ld6/b;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ld6/b;->d()Lcom/google/android/gms/common/api/Status;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lg6/k;->a:Lm6/l;

    .line 6
    .line 7
    invoke-static {p1, v0}, Lm5/v;->b(Lcom/google/android/gms/common/api/Status;Lm6/l;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
