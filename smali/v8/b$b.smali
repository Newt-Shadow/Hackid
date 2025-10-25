.class final Lv8/b$b;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv8/b;->c(Lad/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:Ljava/lang/Object;

.field d:Ljava/lang/Object;

.field e:Ljava/lang/Object;

.field f:Ljava/lang/Object;

.field synthetic g:Ljava/lang/Object;

.field final synthetic h:Lv8/b;

.field i:I


# direct methods
.method constructor <init>(Lv8/b;Lad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv8/b$b;->h:Lv8/b;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/d;-><init>(Lad/e;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Lv8/b$b;->g:Ljava/lang/Object;

    iget p1, p0, Lv8/b$b;->i:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lv8/b$b;->i:I

    iget-object p1, p0, Lv8/b$b;->h:Lv8/b;

    invoke-virtual {p1, p0}, Lv8/b;->c(Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
