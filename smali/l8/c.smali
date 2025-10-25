.class public final synthetic Ll8/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk8/b;


# instance fields
.field public final synthetic a:Lh7/f;


# direct methods
.method public synthetic constructor <init>(Lh7/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll8/c;->a:Lh7/f;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ll8/c;->a:Lh7/f;

    invoke-static {v0}, Lcom/google/firebase/installations/c;->b(Lh7/f;)Lm8/b;

    move-result-object v0

    return-object v0
.end method
