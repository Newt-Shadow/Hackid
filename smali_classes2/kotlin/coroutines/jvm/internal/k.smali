.class public abstract Lkotlin/coroutines/jvm/internal/k;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/internal/i;


# instance fields
.field private final arity:I


# direct methods
.method public constructor <init>(ILad/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/d;-><init>(Lad/e;)V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lkotlin/coroutines/jvm/internal/k;->arity:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getArity()I
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/coroutines/jvm/internal/k;->arity:I

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkotlin/coroutines/jvm/internal/a;->getCompletion()Lad/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lkotlin/jvm/internal/d0;->h(Lkotlin/jvm/internal/i;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "renderLambdaToString(...)"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-super {p0}, Lkotlin/coroutines/jvm/internal/a;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    return-object v0
.end method
