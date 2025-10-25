.class public final synthetic Lm7/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp7/b;


# instance fields
.field public final synthetic a:Lm7/d;


# direct methods
.method public synthetic constructor <init>(Lm7/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm7/a;->a:Lm7/d;

    return-void
.end method


# virtual methods
.method public final a(Lp7/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm7/a;->a:Lm7/d;

    invoke-static {v0, p1}, Lm7/d;->c(Lm7/d;Lp7/a;)V

    return-void
.end method
