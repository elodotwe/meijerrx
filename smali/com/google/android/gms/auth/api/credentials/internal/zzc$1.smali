.class Lcom/google/android/gms/auth/api/credentials/internal/zzc$1;
.super Lcom/google/android/gms/auth/api/credentials/internal/zzd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/auth/api/credentials/internal/zzc;->request(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/credentials/CredentialRequest;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/auth/api/credentials/internal/zzd",
        "<",
        "Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzPc:Lcom/google/android/gms/auth/api/credentials/CredentialRequest;

.field final synthetic zzPd:Lcom/google/android/gms/auth/api/credentials/internal/zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/credentials/internal/zzc;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/credentials/CredentialRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/credentials/internal/zzc$1;->zzPd:Lcom/google/android/gms/auth/api/credentials/internal/zzc;

    iput-object p3, p0, Lcom/google/android/gms/auth/api/credentials/internal/zzc$1;->zzPc:Lcom/google/android/gms/auth/api/credentials/CredentialRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/auth/api/credentials/internal/zzd;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1
    .param p1, "x0"    # Lcom/google/android/gms/common/api/Status;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/api/credentials/internal/zzc$1;->zzk(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;

    move-result-object v0

    return-object v0
.end method

.method protected zza(Landroid/content/Context;Lcom/google/android/gms/auth/api/credentials/internal/ICredentialsService;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/internal/zzc$1$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/api/credentials/internal/zzc$1$1;-><init>(Lcom/google/android/gms/auth/api/credentials/internal/zzc$1;)V

    iget-object v1, p0, Lcom/google/android/gms/auth/api/credentials/internal/zzc$1;->zzPc:Lcom/google/android/gms/auth/api/credentials/CredentialRequest;

    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/auth/api/credentials/internal/ICredentialsService;->performCredentialsRequestOperation(Lcom/google/android/gms/auth/api/credentials/internal/ICredentialsCallbacks;Lcom/google/android/gms/auth/api/credentials/CredentialRequest;)V

    return-void
.end method

.method protected zzk(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/internal/zzb;->zzj(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/auth/api/credentials/internal/zzb;

    move-result-object v0

    return-object v0
.end method
