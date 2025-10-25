.class public abstract Lm5/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lm5/j;

.field private final b:[Ll5/d;

.field private final c:Z

.field private final d:I


# direct methods
.method protected constructor <init>(Lm5/j;[Ll5/d;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm5/o;->a:Lm5/j;

    iput-object p2, p0, Lm5/o;->b:[Ll5/d;

    iput-boolean p3, p0, Lm5/o;->c:Z

    iput p4, p0, Lm5/o;->d:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lm5/o;->a:Lm5/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Lm5/j;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b()Lm5/j$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lm5/o;->a:Lm5/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Lm5/j;->b()Lm5/j$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public c()[Ll5/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lm5/o;->b:[Ll5/d;

    return-object v0
.end method

.method protected abstract d(Lcom/google/android/gms/common/api/a$b;Lm6/l;)V
.end method

.method public final e()I
    .locals 1

    .line 1
    iget v0, p0, Lm5/o;->d:I

    return v0
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lm5/o;->c:Z

    return v0
.end method
