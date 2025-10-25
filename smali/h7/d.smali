.class public final synthetic Lh7/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk8/b;


# instance fields
.field public final synthetic a:Lh7/f;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lh7/f;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh7/d;->a:Lh7/f;

    iput-object p2, p0, Lh7/d;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lh7/d;->a:Lh7/f;

    iget-object v1, p0, Lh7/d;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lh7/f;->b(Lh7/f;Landroid/content/Context;)Lp8/a;

    move-result-object v0

    return-object v0
.end method
