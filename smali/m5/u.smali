.class public abstract Lm5/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm5/u$a;
    }
.end annotation


# instance fields
.field private final a:[Ll5/d;

.field private final b:Z

.field private final c:I


# direct methods
.method protected constructor <init>([Ll5/d;ZI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm5/u;->a:[Ll5/d;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lm5/u;->b:Z

    iput p3, p0, Lm5/u;->c:I

    return-void
.end method

.method public static a()Lm5/u$a;
    .locals 2

    .line 1
    new-instance v0, Lm5/u$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lm5/u$a;-><init>(Lm5/g1;)V

    return-object v0
.end method


# virtual methods
.method protected abstract b(Lcom/google/android/gms/common/api/a$b;Lm6/l;)V
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lm5/u;->b:Z

    return v0
.end method

.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Lm5/u;->c:I

    return v0
.end method

.method public final e()[Ll5/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lm5/u;->a:[Ll5/d;

    return-object v0
.end method
