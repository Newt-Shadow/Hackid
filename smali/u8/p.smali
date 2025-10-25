.class public final synthetic Lu8/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid/a;


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu8/p;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lu8/p;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/sessions/b$b$a;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
