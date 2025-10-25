.class final Lu8/l0$c;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu8/l0;->i(Lad/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field synthetic b:Ljava/lang/Object;

.field final synthetic c:Lu8/l0;

.field d:I


# direct methods
.method constructor <init>(Lu8/l0;Lad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu8/l0$c;->c:Lu8/l0;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/d;-><init>(Lad/e;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Lu8/l0$c;->b:Ljava/lang/Object;

    iget p1, p0, Lu8/l0$c;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lu8/l0$c;->d:I

    iget-object p1, p0, Lu8/l0$c;->c:Lu8/l0;

    invoke-static {p1, p0}, Lu8/l0;->f(Lu8/l0;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
