.class public final synthetic Ltd/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid/Function2;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/c0;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/c0;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltd/d0;->a:Lkotlin/jvm/internal/c0;

    iput-boolean p2, p0, Ltd/d0;->b:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ltd/d0;->a:Lkotlin/jvm/internal/c0;

    iget-boolean v1, p0, Ltd/d0;->b:Z

    check-cast p1, Lad/i;

    check-cast p2, Lad/i$b;

    invoke-static {v0, v1, p1, p2}, Ltd/g0;->b(Lkotlin/jvm/internal/c0;ZLad/i;Lad/i$b;)Lad/i;

    move-result-object p1

    return-object p1
.end method
