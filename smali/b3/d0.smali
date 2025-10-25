.class public final synthetic Lb3/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln6/s;


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb3/d0;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/d0;->a:Landroid/content/Context;

    invoke-static {v0}, Lb3/b0$b;->d(Landroid/content/Context;)Ld4/t$a;

    move-result-object v0

    return-object v0
.end method
