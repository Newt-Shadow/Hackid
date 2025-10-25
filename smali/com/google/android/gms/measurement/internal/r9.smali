.class final synthetic Lcom/google/android/gms/measurement/internal/r9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/w9;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/w9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/r9;->a:Lcom/google/android/gms/measurement/internal/w9;

    return-void
.end method


# virtual methods
.method public final synthetic onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r9;->a:Lcom/google/android/gms/measurement/internal/w9;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/w9;->T(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method
